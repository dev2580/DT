   M S B A M L   `   `   `  ����P  LDesignerTool.Controls, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null\Bclr-namespace:DesignerTool.Controls;assembly=DesignerTool.ControlsDesignerTool.Controls  5      S ODesignerTool.Styles.Wpf, Version=0.14.0.0, Culture=neutral, PublicKeyToken=nulltOclr-namespace:DesignerTool.Styles.Wpf.Controls;assembly=DesignerTool.Styles.Wpf DesignerTool.Styles.Wpf.Controls 5       DesignerTool'   !DesignerTool.Pages.Admin.UserList   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      TctrlsBclr-namespace:DesignerTool.Controls;assembly=DesignerTool.Controls     5      ]mOclr-namespace:DesignerTool.Styles.Wpf.Controls;assembly=DesignerTool.Styles.Wpf     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      .��5
      � -   5          �Name$
  Root��5
         
GrdContent#��[  6    � RowDefinitions 5   
   �� 5      $
��Auto �6   �� 5      .+�5   
   �� $��0��6    �� Orientation$ 
Horizontal=�6"   $
��0,10q�6;   .+�5      �� -   5          
BtnRefresh#��[ 5       � ToolTip$ Refresh��69   6K   �� 5      -   5         
 BtnAdd#��[ 5      $ Add New��65   6G   �� 5      -   5          BtnEdit#��[ 5      $
 Edit��6T   {�66   �� *	CanEdit+6c   �� 5      -   5          	BtnDelete#��[ 5      $ Delete��6X   {�68   �� *	CanDelete+6i   5      �� 5   
   -   5        $��0��5        
TxtDefault#��[ 6   $	��300��6C   $��16(�6O   $��Right=�5      $��Bottom=�6.   $��5q�6I   4  .DesignerTool.Styles.Wpf.Controls.TextboxHelper   	Watermark$ Type to search...��5      ��5      �� *Pager.SearchText+ �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=�.��6f   5      � 5   
   $��1��6    5      �� 5       �� 5!      $
��Auto �6    .+�5$      &   System.Windows.Controls.DataGrid  -   5          Name$ dgList��5$   $   $��0��6      AutoGenerateColumns .    MetroDataGrid#��[ 6P   	 �� SelectedItem	 5%      �� *SelectedItem+$ TwoWay=���5&      �� *	ListPaged+
   Columns
 5(      0  *System.Windows.Controls.DataGridTextColumn  5)      ,  &System.Windows.Controls.DataGridColumn   Header$ Username��6F   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6)   �� *
Username+6F     5*      $
 Role��6B    6)   �� *Role+6B     5+      $ Status��6�    6)   �� *
IsActive+  boolToCustomTextConverter �� 	Converter# [  �� ConverterParameter$ Active|Inactive��6�   5-      "   DesignerTool.Controls.Paging  50      $��Center=�63   $��0��6P   $��Bottom=�6]      Pager 6   �� *Pager+6]   51      53      54      