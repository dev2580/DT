   M S B A M L   `   `   `  ����  DesignerTool.Controls)    #DesignerTool.Controls.SearchTextBox   5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      -   5          >�Name$
  this��5      .��5      � $��30��6   $	��300��6   
������� � DataContext 66   ��  �� ElementName$
 this�� � ColumnDefinitions 5   
   �� 5	      $��* �6   �� 5
      $
��Auto �6   .+�5   
   �� -   5        $��txtMain��5         TxtTransparent#��[  6!   ��6I   �� *
SearchText+ �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=��� 5   
   $��1��6    �� Orientation$ 
Horizontal=�6%   $��Right=�6>   $��Center=�6Z   $��0,3,3,3q�6u   .+�5      �� -   5        $��	btnSearch��5       �� 	IsDefault . $��Center=�5        BtnSearchIcon#��[ 5        brush_SysColours1#��[ 5      5      �� 5      $��2��6   
�������
�������$	��4,0q�6@   �� 5      -   5        $��btnClear��5      {�.  $��Right=�5      $��Center=�5        BtnClearSearchIcon#��[ 5      #��[ 5      5      5       5!      5"      