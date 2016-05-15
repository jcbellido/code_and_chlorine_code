import time
import queue_consumer

# Case on wich the workin process dies while the host process is awating for it for join
def test_worker_dies_while_before_collect():
    w = queue_consumer.WorkingProcessFacade()
    w.process_task(queue_consumer.SimpleTask("one", 0.5))
    w.process_task(queue_consumer.SimpleTask("two", 2.5))
    print "WARNING: about to crash the child proccess"
    w.process_task(queue_consumer.SimpleTask("crash", 1.0)) # simulate crash on working thread
    w.process_task(queue_consumer.SimpleTask("three", 1.5))
    w.collect_tasks()

# Case on wich the workin process dies but the master keeps sending tasks to it
def test_worker_dies_but_master_keeps_sending(): 
    w = queue_consumer.WorkingProcessFacade()
    w.process_task(queue_consumer.SimpleTask("one", 1.0))
    w.process_task(queue_consumer.SimpleTask("crash", 2.5))
    
    time.sleep(5) # The master process is doing stuff ... 
    
    w.process_task(queue_consumer.SimpleTask("two", 2.5))
    w.process_task(queue_consumer.SimpleTask("three", 2.5))
    w.process_task(queue_consumer.SimpleTask("four", 2.5))
    tasks_result = w.collect_tasks()


def several_calls_to_collect(): 
    w = queue_consumer.WorkingProcessFacade()
    w.process_task(queue_consumer.SimpleTask("one", 1.0))
    w.process_task(queue_consumer.SimpleTask("two", 2.5))
    tasks_result = w.collect_tasks()
    
    w.process_task(queue_consumer.SimpleTask("two", 2.5))
    w.process_task(queue_consumer.SimpleTask("three", 2.5))
    w.process_task(queue_consumer.SimpleTask("four", 2.5))
    tasks_result = w.collect_tasks()

    for t in tasks_result:
        print str(t.ID) + " - "+ str(t.result)

# Test calling collect and then sending another tasks

if __name__ == "__main__":
    w = queue_consumer.WorkingProcessFacade()
    w.process_task(queue_consumer.SimpleTask("one", 1.0))
    w.process_task(queue_consumer.SimpleTask("two", 2.5))
    # Verify the existence of the ID in the DDBB
    w.process_task(queue_consumer.SimpleTask("two", 2.5))
    tasks_result = w.collect_tasks()

    for t in tasks_result:
        print str(t.ID) + " - "+ str(t.result)
