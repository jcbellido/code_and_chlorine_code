   M S B A M L   `   `   `  ����E  APixelSmith, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null'clr-namespace:PixelSmith
PixelSmith  5          PixelSmith.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      *localclr-namespace:PixelSmith     5        � Title$  
MainWindow��5      $	��350��5	      $	��525��5
       � WindowState$ 	Maximized=�5      $��18(�6   .��5      �  � RowDefinitions 5      �� 5      $
��Auto �6   �� 5      $	��96* �6   �� 5      $��5* �6   .+�5      o� $��0,0,0.4,-0.4q�6	   .@�5      m� $
��File��6   .@�5      m� -   5        $
��Open��5      6   m� 5      $
��Exit��6   5      m� 5      $��Effects��6   .@�5      m� -   5         m�Name$ NoEffectMenu��5   
   $
��None��5      5   
   m� 5      -   5        $ ColorToneMenu��5   
   $��
Color Tone��5      5   
   m� 5      -   5        $ ToonMenu��5   
   $
��Toon��5      5    
   m� 5!      -   5        $ MonochromeMenu��5"   
   $��
Monochrome��5!      5#   
   m� 5$      -   5        $ 
RippleMenu��5%   
   $��Ripple��5$      5&   
   5'      m� 5(      $��Other��6   .@�5)      m� -   5        $ 	AboutMenu��5*   
   $��About��5)      5+   
   5-      5/      �� 50      -   5         ��Name$ 	mainImage��51      $��Images/River.jpg��50   
   $��0,0.4,0.4,-0.2q�52      $��1��53      $��UniformToFill=�54      �� 56      -	   5         ��Name$ lineX��58      
�������$��1��56      $��1��57      58      �� 59      -
   5        $ lineY��5;      
�������$��1��5:      $��1��5<      �� 5>      -   5         ��Name$ PostionTextBlock��5>      $
�� - -��6(   $��2��64   $��Center=�6A   5?      5@      