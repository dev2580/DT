   M S B A M L   `   `   `  ����S  ODesignerTool.Styles.Wpf, Version=0.14.0.0, Culture=neutral, PublicKeyToken=nulltOclr-namespace:DesignerTool.Styles.Wpf.Controls;assembly=DesignerTool.Styles.Wpf DesignerTool.Styles.Wpf.Controls  5   	   N JDesignerTool.Common, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null|Qclr-namespace:DesignerTool.Common.AttachedProperties;assembly=DesignerTool.Common&DesignerTool.Common.AttachedProperties 5   	   P LDesignerTool.Controls, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null\Bclr-namespace:DesignerTool.Controls;assembly=DesignerTool.ControlsDesignerTool.Controls 5   	    DesignerTool'   !DesignerTool.Pages.Core.LoginView   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   ]mOclr-namespace:DesignerTool.Styles.Wpf.Controls;assembly=DesignerTool.Styles.Wpf     5   	   `apQclr-namespace:DesignerTool.Common.AttachedProperties;assembly=DesignerTool.Common     5   	   TctrlsBclr-namespace:DesignerTool.Controls;assembly=DesignerTool.Controls     5   	   .��5      �   � RowDefinitions  5   
   �� 5	      $
��Auto �6   �� 5
      .+�5   
   -  'DesignerTool.Controls.NotificationPanel     MainText 6"   �� *NotificationText+   	ExtraInfo 6H   �� *NotificationExtra+   NotificationType 6p   �� *NotificationType+   IsPanelShow 6�   �� *IsShowNotification+ �� Mode$ TwoWay=�� 5   
      
GrdContent#��[  6   $��1��63     5      �� 5      �� 5      $
��Auto �6    �� 5      $
��Auto �6    �� 5      $
��Auto �6    �� 5       � ColumnDefinitions 5      �� 5      �� 5      $
��Auto �6#   �� 5      �� 5      .+�5      �� $��1��6   $��1��6(   $
��User��65     	TbDefault#��[ 6A     DetailMargins#��[ 6d   �� 5       $��2��6   $��1��6&   #��[ 63     
TxtDefault#��[ 5!      4   .DesignerTool.Styles.Wpf.Controls.TextboxHelper   	Watermark$ Username��5"      ��5#      �� *
Username+$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=��� 5&      $��1��6   $��2��6(   $��Password��65   #��[ 6E   #��[ 6h   G� 5'      $��2��6   $��2��6*   #��[ 67     
PwdDeafult#��[ 5(      @  :DesignerTool.Common.AttachedProperties.PasswordBoxAttached	   PasswordText	 5)      �� *
Password+$ OneWayToSource=��� 5+      -   5        $��2��5+      $��3��6%   $��Right=�62   $��Login��5,      
 �� 	IsDefault
 .   
BtnDefault#��[ 5-      {�5.      �� *
CanLogin+$ OneWay=�5/      51      52      53      