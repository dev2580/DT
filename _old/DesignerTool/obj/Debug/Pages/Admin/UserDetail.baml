   M S B A M L   `   `   `  ����N  JDesignerTool.Common, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null�Vclr-namespace:DesignerTool.Common.Mvvm.AttachedProperties;assembly=DesignerTool.Common+DesignerTool.Common.Mvvm.AttachedProperties  5      lIclr-namespace:DesignerTool.Common.Mvvm.Views;assembly=DesignerTool.CommonDesignerTool.Common.Mvvm.Views  5       DesignerTool)   #DesignerTool.Pages.Admin.UserDetail   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      eapVclr-namespace:DesignerTool.Common.Mvvm.AttachedProperties;assembly=DesignerTool.Common     5      WvIclr-namespace:DesignerTool.Common.Mvvm.Views;assembly=DesignerTool.Common     5      .��5
      �   � RowDefinitions  5   
   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5      $
��Auto �6   �� 5       � ColumnDefinitions 5   
   �� 5      $
��Auto �6   �� 5      .+�5   
   �� $��Username��6   �� 5   
   $��1��6   $��Password��6!   �� 5   
   $��2��6   $
��Role��6"   �� 5   
   $��1��6   ��6"   �� *Model.Username+ �� Mode$ TwoWay=�G� 5   
   $��1��6   $��1��6&   E   ?DesignerTool.Common.Mvvm.AttachedProperties.PasswordBoxAttached   IsPasswordTextBindable .    PasswordText 5      �� *Model.Password+$ TwoWay=�   stringToDecryptConverter �� 	Converter# [  �� 5    
   $��1��6   $��2��6#    �� DisplayMemberPath$
 Name��5#      ��5!      �� *Roles+$ OneTime=� �� SelectedItem 5"      �� *
Model.Role+$ TwoWay=�5#      �� 5%   
   $��1��6   $��3��6%   .+�5&      �� -   5        $
��Save��5&      ��6$   �� *SaveCommand+6D   5'      5(      5)      