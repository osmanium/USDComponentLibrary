   M S B A M L   `   `   `  ����Y  UMicrosoft.USD.ComponentLibrary, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null}Cclr-namespace:Microsoft.USD.ComponentLibrary.Adapters.AppAttachForm5Microsoft.USD.ComponentLibrary.Adapters.AppAttachForm  5      �[clr-namespace:Microsoft.USD.ComponentLibrary.Adapters.AppAttachForm.ApplicationVisualViewerMMicrosoft.USD.ComponentLibrary.Adapters.AppAttachForm.ApplicationVisualViewer  5      k    eMicrosoft.USD.ComponentLibrary.Adapters.AppAttachForm.ApplicationVisualViewer.ApplicationVisualViewer   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35` \RibbonControlsLibrary, Version=4.0.0.11019, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      UlocalCclr-namespace:Microsoft.USD.ComponentLibrary.Adapters.AppAttachForm     5      ii[clr-namespace:Microsoft.USD.ComponentLibrary.Adapters.AppAttachForm.ApplicationVisualViewer     5        � 	Resources  5
      i  cMicrosoft.USD.ComponentLibrary.Adapters.AppAttachForm.ApplicationVisualViewer.TreeViewLineConverter   LineConverter  ExpandCollapseToggleStyle �� 
TargetType �� Property �� Value �� 
TargetType J� SnapsToDevicePixels �� EndPoint �� 
StartPoint � Color	 � Offset
 ��Name �� Triggers P� Property P� Value �� 
TargetName � ColumnDefinitions � RowDefinitions d�Name �� 	ClickMode d� 	IsChecked �� Path �� RelativeSource �� Padding ��Name ��Name �� Value �� Binding �� 	Converter ]� 
Conditions �� Property �� Value��%�  &	        &	      'Q�     7  7     5   
   6"   �� 5   
   " d�62   .�5      ��  � |� .  6*   �� 5       � �� 5      �� 5      " d�6&   .R�5      � $��15��6   $��13��6*    . .+�5      �� $��9��6(   $��9��62   ���#919191 . ��5   "   �� 5   &   $ 0.5,2&�6:   $ 0.5,0&�6K   .��5   *   � $ White��67   $	 0Q�6E   � 5   *   $ Silver��67   $		 0.5Q�6F   � 5   *   $ 	LightGray��67   $	 1Q�6I   5   '   5      �� 5      $
 
ExpandPath��6(   $��1��6<   $��5��6F   
���   � . 6`   �� 5      $��5��6(   $��1��62   
���   � . 6L   5       5       P� 5!       �@d�	IsChecked$
 TrueY�6;   . �5"   "   �� $ 
ExpandPath��6@    � y�$ 	Collapsed=�6X   5#      5%      5'      5(      �� 5+   
   " Q�6.   .�5,      ��  � ��
 ���� 6+   �� 5-       � ��$ 1,0,0,0q�6(   �� 5.       � �� 5/      �� 50      " Q�6&   .R�51      �  52      �� 53   "   $��19��63   $
��Auto �6A   �� 54   "   $
��Auto �63   �� 55   "   $��* �63    57      �� 58   "   $
��Auto �60   �� 59   "   .+�5=      �� $
 HorLn��6(   $��9,1,0,0q�67   $��1��6H   ���#DCDCDC . 6d   �� 5>      $
 VerLn��6(   $��1��67   ���#DCDCDC$��0,0,1,0q�6R   $��2��6c    . 
�������6�   d� 5?      $ Expander��6=   $��-1,0,0,0q�6+   8��  $ Press=�6�    6�   �� $ 
IsExpanded� �� *TemplatedParent+6�   �� 5@      $��Bd��6%   $��1��6/   #��z��6?   #��z��6i   #��z��6�   # z��6�    . ._�5A   "   �� $ PART_Header��63   $��Header��6H   #��z��6_   $��20��6�   5B      �� 5C      $ 	ItemsHost��6-   $��1��6@   $��1��6M   $��2��6]   5D       5E      �� 5H      $
 true��6�    6*   ��  �� *Self+8  .a�5I   "   �� $ VerLn��6)    � ��$ 9��6N   �� 5J   "   $ VerLn��6)    � ��$	 Top=�6Y   5K      P� 5L       �@Q�
IsExpanded .  . �5M   "   �� $ 	ItemsHost��6)    � y�$ 	Collapsed=�6V   5N      P� 5O       �@��HasItems .  . �5P   "   �� $ Expander��6)    � y�$ Hidden=�6U   5Q      ]� 5R       5S   "   �� 5T   &    � �� .  6E   �� 5U   &    � ��$
 Auto��6A   ./�5W   "   �� $ PART_Header��6)    � ��$ 75��6V   5X      ]� 5Y       5Z   "   �� 5[   &    � �� .  6E   �� 5\   &    � ��$
 Auto��6B   ./�5^   "   �� $ PART_Header��6)    � ��$ 19��6W   5_      P� 5`       �@Q�
IsSelected . . �5a   "   �� $ Bd��6)   # � ��6O    � ���� 5b   "   # � ��6?    � ��5c      ]� 5d       5e   "   �� 5f   &    �@Q�
IsSelected . 6F   �� 5g   &    �@Q�IsSelectionActive .  6M   ./�5i   "   �� $ Bd��6)    � ��
 � � �6O   �� 5j   "    � ��
 �����6?   5k      P� 5l       � {� .  . �5m   "   �� # � ��6?    � ��5n      5p      5r      5s      5t      .��5u      �  5v   
   �� 5w      $��* �6   �� 5x      $��* �6    5z   
   �� 5{      $
��auto �6   �� 5|      $��* �6   .+�5~   
   �� -   5         ��Name$ displayOutput��5~      $��1��6+   $��1��6;   `� 5   
     `� Orientation$  
Horizontal=�6   $��1��6/   $��0��6?   .�5�      c� -   5        ! c�Name$! ddaActionPanel��5�      $��
DDA Action��6/   6F   c� 5�      -   5        $! directActionPanel��5�      $��JAB Direct Action��62   6P   5�      R� 5�   
   -   5        $��0��5�      $��0��6#   $��2��60   ��6A   �� *FirstGeneration+��5�      �� 5�      " Q�6   .�5�      ��  �@Q�
IsExpanded 63   �� *
IsExpanded+" �� Mode$" TwoWay=��� 5�       �@Q�
IsSelected 63   �� *
IsSelected+$" TwoWay=��� 5�       � ��$ Normal"�63   # �� Triggers# 5�      P� 5�       �@Q�
IsSelected . . �5�      ��  � ��$
 Bold"�6;   5�      5�      ��5�      �� 5�      $ �� ItemsSource$ 6+   �� *
Children+.R�5�      �� ��6   �� *DisplayName+5�      5�      5�      5�      