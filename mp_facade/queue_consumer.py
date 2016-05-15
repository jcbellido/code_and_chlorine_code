import time
from multiprocessing import Process, Lock, Pipe, Queue

# Task definition
class SimpleTask(object):
    estimated_processing_time = None
    ID = None
    result = None

    def __init__(self, id, estimated_processing_time):
        self.ID = id
        self.estimated_processing_time = estimated_processing_time
        
    def is_valid(self):
        return True
    
    def do_task(self):
        time.sleep(self.estimated_processing_time)
        self.result = str(self.ID) + " solved after " + str(self.estimated_processing_time)


class WorkingProcessFacade(object):
    _console_mutex = None
    _queue_mutex = None
    _process = None
    _to_worker_queue = None
    _from_worker_queue = None
    _joined = None
    _tasks_sent = None
    _join_timeout = None

    def __init__(self):
        self._console_mutex = Lock()
        self._queue_mutex = Lock()
        self._to_worker_queue = Queue()
        self._from_worker_queue = Queue()
        self._process = Process(target=process_queue, args=(self._console_mutex, self._to_worker_queue, self._from_worker_queue,))
        self._process.start()
        self.print_mutexed("Worker Facade started ... ")
        self._joined = False
        self._tasks_sent = []
        self._join_timeout = 5

    def print_mutexed(self, message):
        self._console_mutex.acquire()
        try:
            print("Working Process Facade: " + str(message))
        except Exception, e:
            print str(e)
        self._console_mutex.release()

    def process_task(self, task):
        if not task.is_valid():
            self.print_mutexed( "Task rejected: " + str(task.ID)  + ", is not valid")
            return False

        for i in self._tasks_sent:
            if i.ID == task.ID:
                self.print_mutexed( "Task rejected: " + str(task.ID)  + ", ID exists in the task list")
                return False

        self._queue_mutex.acquire()
        self._tasks_sent.append(task)
        self._queue_mutex.release()

        if self._joined:
            self.print_mutexed( "Task rejected: " + str(task.ID)  + ", child worker already joined")
            return False
        
        if not self._process.is_alive():
            self.print_mutexed( "Failed sending: " + str(task.ID)  + ", child worker not alive")
            return False
        
        self._queue_mutex.acquire()
        self.print_mutexed( "Sending tasks " + str(task.ID))
        self._to_worker_queue.put(task)
        self._queue_mutex.release()
        return True

    def _join_worker(self):
        self.print_mutexed("Joining worker process")

        if self._process.is_alive():
            self._to_worker_queue.put(None)
            self._to_worker_queue.close()
        
        self._process.join(self._join_timeout)
        while self._process.is_alive():
            self._process.join(self._join_timeout)
        self.print_mutexed("Worker process joined")
        self._joined = True

    # NOTE this call will block you till finishing
    def collect_tasks(self):
        if self._joined:
            self.print_mutexed("Tasks already collected")
            return self._tasks_sent

        self._join_worker()
        self.print_mutexed("Collecting job results")
        while not self._from_worker_queue.empty(): 
            try: 
                task_done = self._from_worker_queue.get()
                for i in range(len(self._tasks_sent)):
                    if self._tasks_sent[i].ID == task_done.ID:
                        self._tasks_sent[i].result = task_done.result
                        break
                else: 
                    self.print_mutexed("Worker returned an unexpected task: " + str(task_done.ID))
                    
            except Exception, e:
                print str(e)
        return self._tasks_sent
 
# ----------------------------------------------------------------------
# Mutexed access to cout
def print_mutexed(lock, message):
    lock.acquire()
    try:
        print("Queue processor: " + str(message))
    except Exception, e:
        print str(e)
    lock.release()

# core of the working thread
def process_queue(console_mutex, input_queue, output_queue):
    print_mutexed(console_mutex, "Started, waiting for tasks")
    
    task = input_queue.get()
    while task is not None:
        if task.ID.lower() == "crash": 
            raise Exception("freak out")
        print_mutexed(console_mutex, "Processing: " + str(task.ID))
        task.do_task()
        output_queue.put(task)
        task = input_queue.get()
    
    output_queue.close()
    print_mutexed(console_mutex, "Termination received, ending worker process")
