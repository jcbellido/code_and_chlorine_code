   M S B A M L   `   `   `  ����   
PixelSmith    PixelSmith.AboutWindow   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006       � Title$  	AboutView��$	��760��$	��580�� � Topmost .  � WindowStartupLocation$ CenterScreen=� � WindowStyle$
 None=� � WindowState$ 	Maximized=� � 
ResizeMode$ NoResize=� � AllowsTransparency . 
������  � 	Resources  
  Brush1 �� Color  CheckBoxFocusVisual	 �� Property
 �� Value �� StrokeDashArray  NormalBrush �� EndPoint �� 
StartPoint � Color � Offset  NormalBorderBrush  
GlyphBrush  PressedBrush  PressedBorderBrush  ButtonNormalBackgroundFill  ButtonBorder 	 ButtonFocusVisual J� SnapsToDevicePixels 
 roundButton �� 
TargetType  RoundButtonStyle2 �� 
TargetType � 	Resources  Key g� 	BeginTime �� 
TargetName �� TargetProperty �� KeyTime �� Value � Cursor A�Name �� Triggers :� RoutedEvent ��Name  rbClick 
 rbOver  rbOver_Copy1 P� Property P� Value  
ListBorder��%�
  &	        &	      &	 u     &	 �     &	     &	 k    &	 �    &	 ?    &	 �    &		 �    &	
     &	 �    7 	 7  7  7  7  7  &	 >
    �� $ 	#FF3F3F3F���� .��� 	 � ��
 �� .R��� ._��� $��15,0,0,0q����	#60000000$��1��$	 1 2R��� $	 0,1&�$	 0,0&�.��� $
 #EEE��$	 0.0Q�� $
 #CCC��$	 1.0Q��� $	 0,1&�$	 0,0&�.��� $
 #CCC��$	 0.0Q�� $
 #444��$	 1.0Q��� $	 0,1&�$	 0,0&�.��� $ Green��$	 0.0Q�� $ 	DarkGreen��$	 1.0Q��� $	 0,1&�$	 0,0&�.��� $
 #BBB��$	 0.0Q�� $
 #EEE��$	 0.1Q�� $
 #EEE��$	 0.9Q�� $
 #FFF��$	 1.0Q��� $	 0,1&�$	 0,0&�.��� $
 #444��$	 0.0Q�� $
 #888��$	 1.0Q��� $ 0.5,1&�$ 0.5,0&�.��� $ White��$ 0Q�� $ 	#FFE3E5F0��$	 0.5Q�� $ 	#FFC6C5D7��$	 1.0Q��� $ 	#FF003C74���� .��� 	 � ��
 �� .R��� 
���   �$	 1 2R�$��1��$��3q� . �� " ��.R�� .+�A� ���	#FF3F3F3F���	#FFEEEEEE$
��Left=�$	��Top=�$��50��$��50��$��3���� " ��.��� 	 �@�FocusVisualStyle8
   �� 	 � ��8
  �� 	 � ��8
  �� 	 � ��#
 � ���� 	 � ��$
 Center=��� 	 � ��$
 Center=��� 	 � ��
 �� " �� ���� OnMouseEnter1 �� OnMouseEnter_Copy1 �� 	click �� 
rbOver .���� $ 00:00:00X�$ 	rectangle��$* $(Shape.Fill).(SolidColorBrush.Color)�.g��� $ 00:00:00��$ 	#FF3F3F3F���� $ 00:00:00.4000000��$ 
DarkOrange���� rbOver_Copy1 .���� $ 00:00:00X�$ 	rectangle��$* $(Shape.Fill).(SolidColorBrush.Color)�.g��� $ 00:00:00��$ 	#FF313131���� $ 00:00:00.4000000��$ 	#FF3F3F3F���� rbClick .���� $ 00:00:00X�$ 	rectangle��$* $(Shape.Fill).(SolidColorBrush.Color)�.g��� $ 00:00:00��$ 	#FF1A1A1A���� $ 00:00:00.2000000��$ 	#FF3F3F3F��.R�� $
��Auto��$
��Auto��$
 Hand��.+�A� $ 	rectangle�����	#FFEEEEEE$��3��$��50��$��50�����	#FF3F3F3FF� ���	#FFEEEEEE�����D�� h� �7}u N ��^�@< �^G 7}Rg Ӕ�� ����.�� ������� Rg �h� �0L �(N Rg �sF< ����G ����je Rg ӗ���G �����@< je u N �]4L h� �je [�� ӗ���.�� ����VW@l0@je �u�;V hf�"  ���-  ���9  �E7E hf(N �u�h� D�� ы�� �u�\�� hf�a�  ���  ���{c >0@ �f�hf7}�uS�^VW@l0@�^.�� 7}[�� �D�� h� $��Center=�$��Center=� :� $ ButtonBase.Click��.[��� $ rbClick_BeginStoryboard��8�� :� $ Mouse.MouseEnter��.[��� $ rbOver_BeginStoryboard��8�� :� $ Mouse.MouseLeave��.[��� $( "OnMouseEnter_Copy1_BeginStoryboard��8�� P�  �@J�IsKeyboardFocused . P�  �@d�	IsChecked$
 trueY�P�  � {� .  . ��� #
 � ��	 � ���� $ 	#FFA5ACB2��.��� -     �Name$  
LayoutRoot��
������ .+��� ���	#992C2C21� $��Center=�$��Center=�$	��720��$	��470��! J� Effect! Z� ��Z� " � ColumnDefinitions" �� $
��0.5* ��� $
��0.5* �# � RowDefinitions# �� $
��49.5 ��� $��* �.+��� #���   ���	#FFEEEEEE$��Stretch=�$��Stretch=�$
��Auto��$
��Auto��$��3��$ �� RadiusX$$ 5��% �� RadiusY$% 5��$��2��$��3���� $��1��$	��Top=�.+��� $	��230��$	��230��& �� Left$	& -70��
' �� Top$	' -70��$��Center=�$��Center=�$��PixelSmithLogo.jpg���� $
��0,15q�
�������$��Center=��� $��24(�$��/Fonts/#Pericles)�.�
PixelSmith �� -   ( ��Name$( 
versionRun��$��24(�$��/Fonts/#Miramonte)�
��� ���.�v1.1�� �� $��16(�$��/Fonts/#Pericles)�.�Photo Editor�� �� .�© 2012-2018 Walt Ritscher�� �� $��1��$��1��.+��� ) �� Orientation$) 
Horizontal=�$
��0,10q�.+��� 
�������$��Version:���� -   * ��Name$* versionText��
�������$��10,0,0,0q�$��0.0.0.0���� $
��Left=�$
��Wrap=�$	��300��$��12(����	#FFC0C0C0 ��%W   '��       �� " ��.��� 	 � ��

 ������� 	 �@��TextDecorations$

 None{���PixelSmith is free for personal or commercial use. Please use at your own risk. No warranties are made or implied for PixelSmith.�� �� �� �� ��Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris in massa a ex interdum laoreet vulputate elementum dolor. In eu neque dolor. Nam scelerisque nulla eu sapien lacinia fermentum.�� �� ��Donec ut erat at neque malesuada aliquet id vitae mi. Vestibulum volutpat odio quam, a blandit dolor blandit placerat. Morbi vitae aliquam libero. Aliquam ultricies eros condimentum nulla lobortis, sit amet condimentum ipsum fringilla. Nulla vel imperdiet tellus. Nullam blandit nulla vel imperdiet sollicitudin. Sed porta vel tellus nec facilisis.�� �� $��Segoe UI)�$��18(�$
��Bold"����	#FFFFFFFF$��About��$
��Wrap=�$
��Left=�$��Center=�$��0��$��2��$��20,0,0,0q��� -   + ��Name$+ okButton��$��Right=�$��0,-15,-15,0q�$	��Top=�$��Button��$��1��#���  