   M S B A M L   `   `   `  ����Y  UMicrosoft.USD.ComponentLibrary, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullO,clr-namespace:Microsoft.USD.ComponentLibraryMicrosoft.USD.ComponentLibrary  5   	   {Bclr-namespace:Microsoft.Crm.UnifiedServiceDesk.Dynamics.Properties4Microsoft.Crm.UnifiedServiceDesk.Dynamics.Properties  5   	   p lMicrosoft.Crm.UnifiedServiceDesk.Dynamics, Version=1.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35�jclr-namespace:Microsoft.Crm.UnifiedServiceDesk.Dynamics;assembly=Microsoft.Crm.UnifiedServiceDesk.Dynamics)Microsoft.Crm.UnifiedServiceDesk.Dynamics 5      O    IMicrosoft.USD.ComponentLibrary.Adapters.Notifications.OutlookNotification   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35` \RibbonControlsLibrary, Version=4.0.0.11019, Culture=neutral, PublicKeyToken=31bf3856ad364e35H 9http://schemas.microsoft.com/winfx/2006/xaml/presentation      5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   >Local,clr-namespace:Microsoft.USD.ComponentLibrary     5   	   X	stringResBclr-namespace:Microsoft.Crm.UnifiedServiceDesk.Dynamics.Properties     5   	   zUSDjclr-namespace:Microsoft.Crm.UnifiedServiceDesk.Dynamics;assembly=Microsoft.Crm.UnifiedServiceDesk.Dynamics     5        � Title$  Activity Reminder��5   	   $	��325��6#   $	��564��60    � WindowStyle$
 None=�6<   {�.  � 	Resources 5       �� MergedDictionaries �� Source�� 5	   
    5
      �� 5      $c ]pack://application:,,,/Microsoft.Xrm.Tooling.Ui.Styles;component/Resources/Button/Styles.xaml?�6%   �� 5      $c ]pack://application:,,,/Microsoft.Xrm.Tooling.Ui.Styles;component/Resources/Window/Styles.xaml?�6%   �� 5      $e _pack://application:,,,/Microsoft.Xrm.Tooling.Ui.Styles;component/Resources/ListView/Styles.xaml?�6%   �� 5      $e _pack://application:,,,/Microsoft.Xrm.Tooling.Ui.Styles;component/Resources/Combobox/Styles.xaml?�6%   %    5      .��5      � $��0q�6    � ColumnDefinitions 5   
   �� 5      $
��1.7* �6   �� 5      $��* �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6    � RowDefinitions 5   
   �� 5      $��* �6   �� 5      $
��auto �6   �� 5      $
��auto �6   �� 5      $
��auto �6   .+�5    
   �� 6   �� 5!   
   -   5        $��ReminderList��5!      $��8q�6'   $��5��62   $	��548��6�    5"         IconTemplate  OutlookItemTemplate ��Name �� Path	 �� Triggers
 P� Property P� Value �� 
TargetName �� Property �� Value �� 
TargetType �� BasedOn��%�  &	        &	 p     '�� k    7���� 5#      .R�5$      �� $��0��6   $��16��6G   $��16��6R   ��6,   �� *	IconUrl+6R   5%      �� 5&      .R�5'      �� $ SubjectTextBlock��6>   $��1��6X   ��6    �� $ subject�6X   	 5(      P� 5)      
 �@J�IsMouseOver . . �5*      �� $ SubjectTextBlock��6%    � ��$ 	Underline{�6h   5+      5-      �� 5.      " ��6   8   .�5/      -   5        50      51       �� View 52      �� 53      .P�54      ��  �� CellTemplate# [  6%    �� Width$ 40��6R   ��55      �� 56      
 � Tag$ IconUrl��63   $�� ��6A   58      �� 59      # [ 6%   $	 300��6Y   ��5:      �� 5;      -   5         ��Name$ SubjectColumn��5;   S   $ subject��63   $��SUBJECT��6A   6S   5=      �� 5>      -   5        	dueColumn��$	 190��5>   ]    �� DisplayMemberBinding 68   �� *due+��5?      �� 5@      -   5        $ 	DueColumn��5@   K   $	 due��63   $	��DUE��6=   6K   5B      5C      5E      �� 5F   
   -   5         ��Name$ OpenItemBtn��5F      $
��OPEN��6&   $��3��65   $��1��6E   $��2q�6R   $��5,0,5,0q�6u   �� 5G   
   -   5        $ DismissItem��5G      $��DISMISS��6&   $��4��68   $��1��6H   $��2q�6U   $��3,0,8,0q�6a   6r   � 5H   
   $��2��6   $��5��6   ���#f8f8f8.+�5I      �� -   5        $ ClickSnoozeText��5I      $��Click snooze to remind��61   $��2��6O   $��5��6\   $��7,4,4,4q�6p   5J      � 5K   
   $��3��6   ���#f8f8f8$��5��61   $��7,0,0,5q�6E   .+�5L      �� -	   5        $��SnoozeCombo��5L      $��250px��6*   $
��Left=�68   .@�5M      �� $��	5 minutes��6    �� 
IsSelected . $ 5��6E   �� 5N      $��
10 minutes��6   $ 10��64   �� 5O      $��
15 minutes��6   $ 15��64   �� 5P      $��
30 minutes��6   $ 30��64   �� 5Q      $��1 hour��6   $ 60��60   �� 5R      $��2 hours��6    � OverridesDefaultStyle .  $	 120��6O   �� 5S      $��4 hours��6   $	 240��61   5T      5U      �� 5V   
   -
   5        $ 	SnoozeBtn��5V      $��SNOOZE��6$   $��1��65   $��3��6E   $��2q�6R   $��60,0,0,5q�6^   $
��Left=�6�   �� 5W   
   -   5        $ DismissAllBtn��5W      $��DISMISS ALL��6(   $��4��6>   $��3��6N   $��2q�6[   $��3,0,8,5q�6�   5X      5Y      