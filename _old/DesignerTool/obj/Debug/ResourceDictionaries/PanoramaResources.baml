   M S B A M L   `   `   `  ����P  LDesignerTool.Controls, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullnKclr-namespace:DesignerTool.Controls.Panorama;assembly=DesignerTool.ControlsDesignerTool.Controls.Panorama  5      G CDesignerTool, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullA%clr-namespace:DesignerTool.ViewModelsDesignerTool.ViewModels 5      \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089-    'DesignerTool.Controls.Panorama.Panorama  �� 
TargetType �� Property �� Value �� 
TargetType � 	Resources ��Name J� SnapsToDevicePixels �� Orientation �� RelativeSource	 �� AncestorType
 �� Mode �� Path �� DataType2   ,DesignerTool.Controls.Panorama.PanoramaGroup   Key �� 	Resources �� Color.   (DesignerTool.Controls.Panorama.GridPanel  TbTitle4 �� SelectionMode$ �� IsSynchronizedWithCurrentItem  transparentListBoxItemStyle   
ItemMargin   MinRowWidth3  -DesignerTool.ViewModels.PanoramaTileViewModel ��Name � Triggers :� RoutedEvent �� TargetProperty �� 
TargetName9  3System.Windows.Media.Animation.EasingDoubleKeyFrame O� KeyTime O� Value � RowDefinitions  stringToStyleConverter �� 	Converter J� Opacity � ColumnDefinitions  	TbDefault �� ElementName  	TbStrong6 �� Triggers  �� Value! �� Binding" �� 
TargetName�� 5      D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    SpanKclr-namespace:DesignerTool.Controls.Panorama;assembly=DesignerTool.Controls  5      ,vm%clr-namespace:DesignerTool.ViewModels  5      :x,http://schemas.microsoft.com/winfx/2006/xaml     5      %z  '         (�� E    5%      *, +)7  7  (�� �    5I      *, +)7  7  7  �� 5      "    6   .�5   
   ��  � �� 5	      �� 5
      " ��6"    5      ���� 5      '��       "  ��6    .�5      ��  � ��$ Hidden=�6N   �� 5       � ��$ Hidden=�6L   5      5      .R�5      �� $ PART_ScrollViewer��6#   #��z��5   #   #��z��5   #    . .��5      �� $��0q�6)   # z 64   5      5      5      �� 5   
    � �� 5      �� 5      .R�5      �� $ 
Horizontal=�6!   ��6:   ��  �� "	   $
 FindAncestor=�$ HorizontalAlignment�5      5!      5"      �� 5%      "  6    5&   
   ���� 5'      transparentListBoxItemStyle  "  ��68    5(      ���� 5)      $ Transparent��6X   (��       6&   * SystemColors.HighlightBrushKey+)6X   5*      .�5+      ��  � ��$ 0q�6,   �� 5,       � ��$ 0q�6+   �� 5-       �@ ItemWidthSpan 6@   �� *WidthInBlocks+5.      5/      .R�51   
   ]� ��. 
������ .+�52      �� 8��  $	��Top=�6R   $��5,0,0,0q�6g   ��6:   �� *Header+6g   �� 54      $ Single=�55      $��0q�56      
������ 
������ $��Stretch=�59      $��Stretch=�5:      $
 TrueY�5;      8�� ��54      �� *Tiles+��5>      �� 5?      .R�5@        $ 5q�6(    67   ��  �� "	   $
 FindAncestor=�$ MinRowWidthInBlocks�5A      5D      5E      5F      �� 5I      "  6   .R�5J   
   �� $
 bord��6   $��2q�5K      $��0q�5N      ��5L      ��  �� "	   $
 FindAncestor=�$ RandomTileColor���5M      ��  �� $

 Self=�$ 
Background� 5O      :� 5P      $ Border.MouseEnter��6#   .[�5Q      �� .��5R      �� .��5S   "   U� $ (UIElement.Opacity)�6@   $ grdSide1��6p   .\�5T   &     $ 0:0:0.3��6;   $ 0Q�6M   5U   #   U� 5V   "   $ (UIElement.Opacity)�6@   $ grdSide2��6p   .\�5W   &     $ 0:0:0.3��6;   $ 1Q�6M   5X   #   5Y      5Z      5[      :� 5\      $ Border.MouseLeave��6   .[�5]      �� .��5^      �� .��5_   "   U� $ (UIElement.Opacity)�6@   $ grdSide1��6p   .\�5`   &     $ 0:0:0.5��6;   $ 0Q�6M     5a   &   $ 0:0:1.2��6;   $ 1Q�6M   5b   #   U� 5c   "   $ (UIElement.Opacity)�6@   $ grdSide2��6p   .\�5d   &     $ 0:0:0.9��6;   $ 1Q�6M     5e   &   $ 0:0:1.2��6;   $ 0Q�6M   5f   #   5g      5h      5i      ._�5k      � $��
grdContent��6   $��2q�6%    5l      �� 5m      �� 5n      $
��Auto �6$   .+�5q      � $��grdSide1��6   .+�5r      � $	��100��6   $��Center=�6(   $	��Top=�6E   .+�5s      F� $��
pathVector��6   $��10q�6�   $
��Auto��6�   ��61   �� *VectorStyleName+8   6�   �� 5t      $��imgTile��6    ��6/   �� *
ImageUrl+5u      5v      � 5x      $��grdSide2��6   $ 0Q�6'    5y      �� 5z      �� 5{      $
��Auto �6+   .+�5}      �� 8�� $	��Top=�6`   $
��Wrap=�6x   
���������6    �� *Description+6�   � 5~      $��30��6   $��5,0,0,0q�6'   $��Right=�68   $	��Top=�6T   $��1��6l   .+�5      F� $��2q�6T   $
��Auto��6_   ��6   �� $ Style�$ 
pathVector��6_   �� 5�      ��6    �� $ Source�$ imgTile��5�      5�      �� 5�      $��1��65   8�� 
�������$��Right=�6x   ��6   �� *	Heading+6x   5�      5�       5�   
   �� 5�      $
  True��68   ! 6   �� *	IsPressed+.a�5�      �� $
" bord��6    � ��$ 4q�6=   �� 5�      $
" bord��6    �@J�Opacity$	 0.5Q�6>   5�      5�      5�      