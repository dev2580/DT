   M S B A M L   `   `   `  ����P  LDesignerTool.Controls, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null\Bclr-namespace:DesignerTool.Controls;assembly=DesignerTool.ControlsDesignerTool.Controls  5   	   G CDesignerTool, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullC&clr-namespace:DesignerTool.Pages.ShellDesignerTool.Pages.Shell 5   	   N JDesignerTool.Common, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullrLclr-namespace:DesignerTool.Common.Mvvm.Services;assembly=DesignerTool.Common!DesignerTool.Common.Mvvm.Services 5   	   c _System.Windows.Interactivity, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35qPclr-namespace:System.Windows.Interactivity;assembly=System.Windows.InteractivitySystem.Windows.Interactivity 5   	   rLclr-namespace:DesignerTool.Common.Mvvm.Triggers;assembly=DesignerTool.Common!DesignerTool.Common.Mvvm.Triggers 5	   	   O Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem 5
   	   U QMahApps.Metro, Version=0.13.1.0, Culture=neutral, PublicKeyToken=f4fb5a3c4d1e5b4fV;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.MetroMahApps.Metro.Controls 5   	   (   "DesignerTool.Pages.Shell.ShellView   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R	 NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml 	    5   	   TctrlsBclr-namespace:DesignerTool.Controls;assembly=DesignerTool.Controls 	    5   	   5vm&clr-namespace:DesignerTool.Pages.Shell 	    5   	   \svcLclr-namespace:DesignerTool.Common.Mvvm.Services;assembly=DesignerTool.Common 	    5   	   Hei9http://schemas.microsoft.com/expression/2010/interactions 	    5   	   ^iPclr-namespace:System.Windows.Interactivity;assembly=System.Windows.Interactivity 	    5   	   \cmdLclr-namespace:DesignerTool.Common.Mvvm.Triggers;assembly=DesignerTool.Common 	    5	   	   6sys&clr-namespace:System;assembly=mscorlib 	    5
   	   Im;clr-namespace:MahApps.Metro.Controls;assembly=MahApps.Metro 	    5   	   5  /DesignerTool.Common.Mvvm.Services.DialogService    IsRegisteredView  .  � WindowState$ 	Maximized=�5   	    � Title$ Designer Tool��5   	   $	��768��6   $
��1024��6,      DialogResult 5   	   �� *DialogResult+{�5   	   �� *	IsEnabled+.  (System.Windows.Interactivity.Interaction   Triggers 5      /  )System.Windows.Interactivity.EventTrigger  5   
      	EventName$ Loaded��6   .  (System.Windows.Interactivity.TriggerBase   Actions. 5      6  0DesignerTool.Common.Mvvm.Triggers.EventToCommand     Command 6!   �� *LoadedCommand+5       � DataContext 5      -  'DesignerTool.Pages.Shell.ShellViewModel  5   
   .��5      � 	 � RowDefinitions	 5   
   �� 5      $
��Auto �6   �� 5      $��* �6   �� 5      
 � ColumnDefinitions
 5   
   �� 5       $��* �6   �� 5!      $
��Auto �6   .+�5$   
   �� $��1��6   y�6   �� *
IsSaveShow+ �� Mode$ TwoWay=�   boolToVisibilityConverter �� 	Converter# [  ._�5%      �� .+�5&      �� ��6   �� *SaveMessageHeader+$ OneWay=��� 5'      ��6   �� *SaveMessage+$ OneWay=�5(      5)      �� 5+   
   $��1��6   y�6   �� *IsErrorShow+$ TwoWay=�# [  ._�5,      �� .+�5-      �� ��6   �� *ErrorMessageHeader+$ OneWay=��� 5.      ��6   �� *ErrorMessage+$ OneWay=�5/      50      � 52   
   -   5         �Name$ grdTop��52      $��
20,30,20,0q�6    J� RenderTransformOrigin$ 0.5,0.5&�63   .+�53      �� $��Designer Tool��6     	TbHeading#��[ 6-   �� 54       �� Orientation$ 
Horizontal=�6   $��Right=�62   .+�55      �� $��60��56      $��60��6!     MetroCircleButtonStyle#���  6,   ��57      �� *HomeCommand+��58      F� 59       
 vcHome#��[ 6   $��10q�6?   5;      �� 5<      $��60��5=      $��60��6!   #���  6,   y�5>      �� *IsMenuVisible+$ TwoWay=�# [   �� ConverterParameter$
 True����6�   �� *ShowMenuCommand+��5?      F� 5@       
 vcList#��[ 6   $��10q�6?   5B      5C      5D      �� 5]   
   $��2��6   8  2MahApps.Metro.Controls.TransitioningContentControl  5`   
   -   5          Name$ contentMain��5`   (   $��1��6=   $��2��6J      
Transition$ RightReplace=�5b   (   ��5a   (   ��  �� Path$ CurrentViewModel�$ TwoWay=� �� NotifyOnTargetUpdated . 5b   (   #  MahApps.Metro.Controls.Flyout  5f   
      Header$
 Menu��6      Position$ Right=�6!   $	��200��62      Theme$ Accent=�6k   $��1��6z   $��2��6�      IsOpen 6>   �� *IsMenuVisible+$ TwoWay=�.��5g      �� $ Vertical=�6   $
��15,5q�60   .+�5i      �� $��User Module��6   
�������6/   �� 5j      $��System users��6:   ��6   �� *UsersCommand+6:   �� 5k      $��People��6;   ��6   �� *PeopleCommand+6;   �� 5l      $��User Groups��6>   ��6   �� *UserGroupCommand+6>   �� 5m      $
��Test��63   ��6   �� *Dummy+63   �� 5n      $��
Calculator��63   ��6   �� *Dummy+63   5p      5q      � 5t   
   
������ $��3��6(   y�69   �� *	IsLoading+# [  $ TwoWay=�.+�5u      �  J� Opacity$	 0.1Q�6   $��Stretch=�6!   $��Stretch=�6=   
���   �6[   �� 5v      $	��300��6   $	��150��6!   $	��1.5q�6.   ���#D0D7E4$��Center=�6Z   $��Center=�6u   
�������._�5w      �� $ 
Horizontal=�6   $��Center=�66   $��Center=�6Q   .+�5x      )	  #MahApps.Metro.Controls.ProgressRing	    AccentColorBrush#���  6%   $	��100��6U   $	��100��6b    	  IsActive . 6n   �� 5y        TbSubHeading#��[ 6A   ��6!   �� *LoadingMessage+6A   5z      5{      5|      5~      5      