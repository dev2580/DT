   M S B A M L   `   `   `  ����P  LDesignerTool.Controls, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null\Bclr-namespace:DesignerTool.Controls;assembly=DesignerTool.ControlsDesignerTool.Controls  5   	   P LDesignerTool.AppLogic, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null~Sclr-namespace:DesignerTool.AppLogic.ViewModels.Shell;assembly=DesignerTool.AppLogic&DesignerTool.AppLogic.ViewModels.Shell 5   	   \Bclr-namespace:DesignerTool.AppLogic;assembly=DesignerTool.AppLogicDesignerTool.AppLogic 5   	   O Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem 5   	   S ODesignerTool.Styles.Wpf, Version=0.14.0.0, Culture=neutral, PublicKeyToken=nulltOclr-namespace:DesignerTool.Styles.Wpf.Controls;assembly=DesignerTool.Styles.Wpf DesignerTool.Styles.Wpf.Controls 5	   	    DesignerTool(   "DesignerTool.Pages.Shell.ShellView   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   TctrlsBclr-namespace:DesignerTool.Controls;assembly=DesignerTool.Controls     5   	   fvmHomeSclr-namespace:DesignerTool.AppLogic.ViewModels.Shell;assembly=DesignerTool.AppLogic     5   	   QvmBclr-namespace:DesignerTool.AppLogic;assembly=DesignerTool.AppLogic     5   	   Hei9http://schemas.microsoft.com/expression/2010/interactions     5   	   6sys&clr-namespace:System;assembly=mscorlib     5   	   ]mOclr-namespace:DesignerTool.Styles.Wpf.Controls;assembly=DesignerTool.Styles.Wpf     5	   	   -   5          � WindowState$  	Maximized=�5
   	    � Title$ Designer Tool��5   	   $	��768��6   $
��1024��6,   {�5   	   �� *	IsEnabled+ � DataContext 5      ;  5DesignerTool.AppLogic.ViewModels.Shell.ShellViewModel  5   
   .��5      �  � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      $��* �6   �� 5      $
��Auto �6    � ColumnDefinitions 5   
   �� 5      $��* �6   �� 5      $
��Auto �6   .+�5   
   � -   5         �Name$ grdTop��5      $��
20,30,20,5q�6    J� RenderTransformOrigin$ 0.5,0.5&�63    5      �� 5      �� 5       .+�5#      ��  �� Orientation$ 
Horizontal=�6   $
��Left=�62   $��0��6M   y�5$      �� *LoggedInUser+&   DesignerTool.AppLogic.AppSession   Current	 �� Source#	 Z 
 �� Mode$
 OneWay=� !  hasValueToVisibilityConverter �� 	Converter# [  .+�5%      �� -   5          
BtnProfile#���  5%       � ToolTip$ User profile��6>    � ContextMenu 5&      �� 5'      -   5         ��Name$ ctxViewProfile��5'   &   .@�5(      m� -   5        $��View Profile��5(   '   6=   �� 5)      m� 5*      -   5        $��Log out��5*   '   68   5+      5-      �� 5.      -   5         ��Name$ 
btnLicense��5.        
BtnLicense#���  6-   ��5/      �� *CurrentLicenseState+   licenseStateToBrushConverter# [  50      �� *CurrentLicenseInfo+51      52      �� 55      $ 
Horizontal=�6   $��Right=�62   $��1��6N   y�56      �� *LoggedInUser+#	 Z $
 OneWay=�# [  .+�57      �� -   5          BtnBack#���  57      $ Go back to previous page��6<   y�58      �� *	CanGoBack+  boolToVisibilityConverter# [ 59      �� 5:      -	   5          BtnHome#���  5:      $ Go to Home Page��6<   {�5;      �� *	CanGoHome+$
 OneWay=�5<      �� 5=      -
   5          BtnMenu#��[ 5=      $ 	Open Menu��6:   y�5>      �� *IsMenuVisible+$
 TwoWay=�# [  �� ConverterParameter$
 True��5?      5@      5A      B  <DesignerTool.Styles.Wpf.Controls.TransitioningContentControl  5D   
   -   5          Name$ contentMain��5D   (   $��1��6=      
Transition$ RightReplace=�6J   � 5G   
   
������ $��4��6(   y�69   �� *	IsLoading+# [ $
 TwoWay=�.+�5H      �  J� Opacity$	 0.9Q�6   $��Stretch=�6!   $��Stretch=�6=     
WhiteBrush#���  6[   �� 5I      $ Vertical=�6   $��Center=�60   $��Center=�6K   .+�5J      3  -DesignerTool.Styles.Wpf.Controls.ProgressRing   	 AccentColorBrush#��� 	 6!   $	��100��6Q   $	��100��6^      IsActive 6j   �� *	IsLoading+�� 5K       
 TbSubHeading#��[
 6=   ��6   �� *LoadingMessage+6=   5L      5M      � 5P   
   $��4��6   $��1��6    y�60   �� *LoggedInUser+#	 Z $
 OneWay=�# [  .+�5Q      � y�6   �� *IsMenuVisible+$
 TwoWay=�# [ .+�5R      -  'DesignerTool.Styles.Wpf.Controls.Flyout  
������    AnimateOnPositionChange .    Header$
 Menu��5S         Position$ Right=�6!      Theme$ Accent=�62      IsOpen 5T      �� *IsMenuVisible+$
 TwoWay=�.��5V      �� $ Vertical=�6!   $	��320��68   $
��15,5q�6D   y�5W      �� *IsMenuVisible+$
 TwoWay=�# [ .+�5Z      �� -   5          LblMenuItem#��[ 5Z       $	��8,0q�6E   $��System users��6R   6i   �� 5[      -   5        #��[ 5[       $	��8,0q�6E   $��Generate Activation key��6R   6t   �� 5\      -   5        #��[ 5\       $	��8,0q�6E   $��Debtors��6R   6d   �� 5]      -   5        #��[ 5]       $	��8,0q�6E   $��	Suppliers��6R   6f   �� 5^      -   5        #��[ 5^       $	��8,0q�6E   $��
Unit Types��6R   6g   5_      5a      5b      5c      �� 5f   
   $��2��6     	TbHeading#��[ 6!   $��10q�6D   $��Center=�6i   $
��Left=�6�     
BlackBrush#���  6�   ��6P   �� *	Heading+6�   5g      5h      