   M S B A M L   `   `   `  ����\  XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089  �� MergedDictionaries �� Source   Key �� Color  StandardTabControl �� 
TargetType �� 	Resources �� Property �� Value  
Foreground �� 
TargetType J� SnapsToDevicePixels	 � ColumnDefinitions
 �� Path F�Name �� Stretch  CloseButtonStroke �� StrokeEndLineCap �� StrokeStartLineCap �� Triggers ^� 
Conditions �� Binding �� RelativeSource �� Mode �� AncestorType �� Value P� Property P� Value $  CloseButtonBackgroundHighlighted �� 
TargetName   CloseButtonStrokeHighlighted   CloseButtonBackgroundPressed  BorderBrushSelected  BackgroundSelected-    'System.Windows.Input.KeyboardNavigation    TabNavigation � RowDefinitions K� ZIndex K� IsItemsHost    TabIndex 	 
Background 
 ClosableTabItemTemplate � 	Resources  WorkspacesTemplate$ �� IsSynchronizedWithCurrentItem�� 5      D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     :x,http://schemas.microsoft.com/winfx/2006/xaml      5        5      �� 5   
   $T Npack://application:,,,/DesignerTool.Styles.Wpf;component/Styles/VS/Colors.xaml?�6   �� 5   
   �� 5
      BackgroundHighlighted  $ #54545C��6<   �� 5      BorderBrushHighlighted  $ #6A6A75��6=   �� 5      BackgroundSelected  $ 	#CCcb0000��69   �� 5      BorderBrushSelected  $ #1C97EA��6:   �� 5      BackgroundNormal  $ #3F3F46��67   �� 5      BorderBrushNormal  $ #54545C��68   �� 5      $ CloseButtonBackgroundHighlighted  $ #39ADFB��6G   �� 5       CloseButtonBackgroundPressed  $ #084E7D��6C   �� 5      CloseButtonStroke  $ 	#AAFFFFFF��68   �� 5       CloseButtonStrokeHighlighted  $ #FFFFFF��6C   5      %�  &	       7  &	
 $    7  &	 8    7 
 �� 5      " ��5       5   
   ���� 5      '��       " ��6   .�5      ��  �@�FocusVisualStyle 5       Z� �� 5!       � ��
 ���� 5"      �� 5#       � ��8   5$      �� 5%       � �� 5&      �� 5'      " ��6*   .R�5(      � $��30��6#   #��z��5)   #    . 	 5+   "   �� 5,   &   $
��Auto �67   �� 5-   &   $��25 �67   .+�5/   "   �� $��0��63   $��	10,0,10,0q�50   3   $��Center=�51   3   $��Center=�52   3   $��Header��53   3   �� 54   "   $��1��6)   $��15��55   )   $��15��56   )   $��Center=�57   )   $��Center=�58   )   $��Right=�5:   )   ��59   )   �� $
 CloseCommand���5;   &   �� 5<   *   " ��60   .�5=   .   ��  � ��
 ���� 5>   5   �� 5?   .    �@�Cursor$
 Hand��5@   5   �� 5A   .    � |� .  5B   5   �� 5C   .    � �� 5D   2   �� 5E   6   " ��6F   .R�5F   :   � #��z��6?   .+�5G   >   F� $ 
ButtonPath��6C   $��2q�5H   C   $��Center=�5I   C   $��Center=�5J   C   +����        �@B @B �    @B �@B     	$ Uniform=�5L   C   #���  5M   C   $
 Flat=�5N   C   $
 Flat=�5O   C   $��2��5P   C   5Q   ;    5R   :   ^� 5S   >    5T   B   �� 5U   F    6P   �� *
IsSelected+ �� $ FindAncestor=�$ TabItemL�	 false5V   P   �� 5W   F    6P   �� *IsMouseOver+ �� $ FindAncestor=�$ TabItemL�	 false5X   P   0�5Z   B   �� 5[   F    � y�$ Hidden=�5\   M   5^   ?   P� 5_   >    � {� .  . �5a   B   ��  � y�$ Hidden=�5b   I   5c   ?   P� 5d   >    �@J�IsMouseOver . . �5f   B   �� # �  5g   I    � ���� 5h   B   $ 
ButtonPath��6I   # �  5j   I    � ��5k   ?   P� 5l   >    � �� . . �5n   B   �� # �  5o   I    � ���� 5p   B   $ 
ButtonPath��6I   # �  5r   I    � ���� 5s   B   $ 
ButtonPath��6I    � ��$ 2.5,2.5,1.5,1.5q�5u   I   5v   ?   5x   7   5z   /   5{   +   5}   #   5~       5      P� 5�   "    �@��
IsSelected .  . �5�   &   ��  � ��
 ���� 5�   -   5�   #   P� 5�   "    �@J�IsMouseOver . . �5�   &   �� # �  5�   -    � ��5�   #   P� 5�   "    �@��
IsSelected . . �5�   &   �� # �  5�   -    � ��5�   #   5�      5�      5�      5�      .�5�   
   ��  � �� 5�      �� 5�      " ��6"   .R�5�      � $ Local=�6    5�      �� 5�      $
��Auto �6,   �� 5�      $��* �6,   .+�5�      �� 
������ #���  5�   !   $��0,0,0,3q�5�   !   ._�5�      �� $��HeaderPanel��6'   $��0,0,4,-1q�5�   '   $ 1��5�   '    . $ 1��5�   '   5�      �� 5�      $��1��6!   #��� 	 5�   !   �� 5�      $��PART_SelectedContentHost��6+   $��1��5�   +   $��SelectedContent��5�   +   5�      5�      5�      5�      �� 5�      .R�5�   
   ]� .+�5�      �� $��Center=�6   ��5�      �� *DisplayName+ 5�      ���� 5�      '��       " ��6   .�5�      ��  � ��8   5�   !   �� 5�       � ��$ 20(�5�   !   5�      5�      5�      5�      5�      �� 5�      .R�5�   
   �� $��0q�6   $
 TrueY�5�      8��  #���  5�      ��5�      �� 5�      5�      5�      