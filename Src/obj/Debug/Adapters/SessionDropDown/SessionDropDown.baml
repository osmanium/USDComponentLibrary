   M S B A M L   `   `   `  ����~  zMicrosoft.Crm.UnifiedServiceDesk.RoundProgressIndicator, Version=1.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35��clr-namespace:Microsoft.Crm.UnifiedServiceDesk.RoundProgressIndicator;assembly=Microsoft.Crm.UnifiedServiceDesk.RoundProgressIndicator7Microsoft.Crm.UnifiedServiceDesk.RoundProgressIndicator  5       p lMicrosoft.Crm.UnifiedServiceDesk.Dynamics, Version=1.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35�jclr-namespace:Microsoft.Crm.UnifiedServiceDesk.Dynamics;assembly=Microsoft.Crm.UnifiedServiceDesk.Dynamics)Microsoft.Crm.UnifiedServiceDesk.Dynamics 5      " Microsoft.USD.ComponentLibrary=   7Microsoft.USD.ComponentLibrary.Adapters.SessionDropDown   5       R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35` \RibbonControlsLibrary, Version=4.0.0.11019, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      �ProgressIndicator�clr-namespace:Microsoft.Crm.UnifiedServiceDesk.RoundProgressIndicator;assembly=Microsoft.Crm.UnifiedServiceDesk.RoundProgressIndicator     5       zusdjclr-namespace:Microsoft.Crm.UnifiedServiceDesk.Dynamics;assembly=Microsoft.Crm.UnifiedServiceDesk.Dynamics     5        � 	Resources  5
         ListBox.Static.Background �� Color  ListBox.Static.Border  ListBox.Disabled.Background  ListBox.Disabled.Border  USDSessionListStyle �� 
TargetType �� Property �� Value �� 
TargetType ��Name �� Padding J� SnapsToDevicePixels	 �� Triggers
 P� Property P� Value �� 
TargetName ]� 
Conditions �� Property �� Value  FocusVisual �� StrokeDashArray  Item.MouseOver.Background  Item.MouseOver.Border $  Item.SelectedInactive.Background  	 Item.SelectedInactive.Border "
 Item.SelectedActive.Background  Item.SelectedActive.Border  USDSessionListItemStyle � ColumnDefinitionsK   EMicrosoft.Crm.UnifiedServiceDesk.RoundProgressIndicator.ChatIndicatorI   CMicrosoft.Crm.UnifiedServiceDesk.RoundProgressIndicator.MainControl ��Name  DisabledForegroundBrush ��Name  SelectedForegroundBrush��%�  &	        &	 #     &	 F     &	 i     &	 �     7   7  7  7  &	 �    &	 >    &	 a    &	 �    &		 �    &	
 �    &	 �    &	     7  7  7  7 	 7 
 7  �� 5   
   $ 	#FFFFFFFF��6<   �� 5   
   $ 	#FFABADB3��68   �� 5   
   $ 	#FFFFFFFF��6>   �� 5   
   $ 	#FFD9D9D9��6:   �� 5   
   " ��6,   .�5      ��  � ��8   6+   �� 5       � ��$ Stretch=�64   �� 5       � ��8  6,   �� 5       � ��$ 1q�60   �� 5       � ��# � ��6+   �� 5       � ��$
 Auto=�6K   �� 5       � ��$
 Auto=�6I   �� 5       � �� . 6>   �� 5       �@��PanningMode$
 Both=�69   �� 5       �@��IsFlicksEnabled .  67   �� 5       � ��$ Center=�69   �� 5       � �� 5      �� 5      " ��6&   .R�5      �� $ Bd��6!   #��z��6-   #��z��6Y   #��z��6�   $ 1q�6�    . ._�5      �� |�.  #��z��6=   .��5    "   �� # z 61   5!      5"      	 5#      P� 5$      
 � {� .  . �5%   "   �� $ Bd��6?   8   � ��6O   �� 5&   "   $ Bd��6@   8   � ��6P   5'      ]� 5(       5)   "   �� 5*   &    �@��
IsGrouping . 6F   �� 5+   &   " �@%�IsVirtualizingWhenGrouping .  6h   ./�5-   "   ��  � �� .  6R   5.      50      52      53      �� 54   
   .�55      ��  � �� 56      �� 57      .R�58      �� $��2q�6$    . #��� ��6J   $��1��6�   $	 1 2R�6�   59      5;      5<      �� 5=   
   $ 	#1F26A0DA��6<   �� 5>   
   $ 	#a826A0Da��68   �� 5?   
   $ 	#3DDADADA��6C   �� 5@   
   $ 	#FFDADADA��6?   �� 5A   
   $ 	#3D26A0DA��6A   �� 5B   
   $ 	#FF26A0DA��6=   �� 5C   
   " ��60   .�5D      ��  � �� 5E      �� 5F      " ��6&   .R�5G      �� $ Bd��6!   #��z��6-   #��z��6Y   #��z��6�   # z��6�    . ._�5H      �  5I   "   �� 5J   &   $��* �67   �� 5K   &   $
��auto �67   �� 5L   &   $
��auto �67   �� 5M   &   $
��auto �67   .+�5O   "   �� $��PART_BTNCLOSE��6)   $��X��6>   $��0��6J   $��Center=�6Z   $
��Left=�5P   !   $��0,0,5,0q�6<   $y�	Collapsed=�6M   
������ 
������ $��9(�5Q   T     5R   "   $��ChatIndicator��6R   $��1��6B   $y�	Collapsed=�6g     5S   "   $��ProgressIndicator��6P   $��2��6@   $y�	Collapsed=�6i   �� 5T   "   $ 	ItemLabel��6(   $��3��6;   #���  6K   .��5U   &   �� $ ContentSite��67   $	��Top=�6L   $��Center=�6d   ��. $��Content��6�   $��5,0,5,0q�6�   5V   #   5W      5X      	 5Y      P� 5Z      
 �@��
IsSelected . . �5[   "   ��  �@K�ZIndex$	 100��6A   �� 5\   "   $ Bd��6)   # �  6P    � ���� 5]   "   $ Bd��6)    � ��
 �����6O   �� 5^   "   $ Bd��6)    � ��$ 2,0,0,-1q�6K   �� 5_   "   $ 	ItemLabel��6)    � ��
 �   �6V   �� 5`   "   $ PART_BTNCLOSE��6)    6Z   �� *CloseButtonVisibility+ � y��� 5a   "    � ��$
 Bold"�6?   5b      ]� 5c       5d   "   �� 5e   &    �@J�IsMouseOver . 6G   ./�5g   "   �� $ Bd��6?   8    � ��6O   �� 5h   "   $ Bd��6@   8   � ��6P   5i      ]� 5j       5k   "   �� 5l   &    �@��IsSelectionActive .  6V   �� 5m   &    �@��
IsSelected . 6F   ./�5o   "   �� $ Bd��6?   8   � ��6O   �� 5p   "   $ Bd��6@   8   � ��6P   5q      ]� 5r       5s   "   �� 5t   &    �@��IsSelectionActive . 6V   �� 5u   &    �@��
IsSelected . 6F   ./�5w   "   �� $ Bd��6?   8   � ��6O   �� 5x   "   $ Bd��6@   8   � ��6P   5y      P� 5z      
 � {� .  . �5{   "   �� $ Bd��6K   # � ��6[    � ��5|      5~      5�      5�      5�      .��5�      � .+�5�   
   �� -   5         ��Name$ 
tcSessions��5�      #���  6&   #���  6T   $��0��6�   $��2q�6�   6�   5�      5�      