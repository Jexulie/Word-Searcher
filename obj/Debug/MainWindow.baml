   M S B A M L   `   `   `  ����G  CWordSearcher, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null+clr-namespace:WordSearcherWordSearcher  5   	   O Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem 5   	       WordSearcher.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ,localclr-namespace:WordSearcher     5   	   6sys&clr-namespace:System;assembly=mscorlib     5   	     � Title$  Word-Searcher��5	   	   $	��600��6   $	��800��6,   $	��600��68   $	��800��6H    � SizeToContent$ WidthAndHeight=�6W    � Topmost .   � WindowState$ Normal=�6�    � Icon$ ./Resources/favicon.ico��6�    � 	Resources 5
      ��%    5      .��5G      �  � RowDefinitions 5H   
   �� 5I      $	��300 �6   �� 5J      $	��300 �6    � ColumnDefinitions 5L   
   �� 5M      $	��400 �6   �� 5N      $	��400 �6   .+�5P   
   �� $��	Extension��6   $
��Left=�6$   $��	10,24,0,0q�6?   $	��Top=�6R   �� 5Q   
   $��Search Word��6   $
��Left=�6&   $��	10,52,0,0q�6A   $	��Top=�6T   �� 5R   
   $��Search Folder��6   $
��Left=�6(   $��	10,80,0,0q�6C   $	��Top=�6V   �� 5T   
   -   5         ��Name$ search_List��5T      $
��Left=�6(   $	��161��6C   $��
10,129,0,0q�6P   $	��Top=�6d   $	��380��6|   $
��Auto=�6�   $
��Auto=�6�   	 �� View	 5U      �� 5V      .P�5W      �� $��Recent Searches��6%   
 �� Width$	
 125��6>    �� CellTemplate 5X      �� 5Y      .R�5Z   "   �� -   5        $��	Underline{�5Z   D   
���<�� � Cursor$
 Hand��6u   ��6,   �� *search+6�   5[      5]      �� 5^      $��Search Date��6%   $	
 200��6:    5_      �� 5`      .R�5a   "   �� ��6,   �� *date+5b      5d      5e      5g      �� 5i   
   -   5         ��Name$ extension_Box��5i      $
��Left=�6)   $��23��6D   $��
105,27,0,0q�6P    �� TextWrapping$ NoWrap=�6d   $�� ��6z   $	��Top=�6�   $	��205��6�   �� 5j   
   -   5        $ search_Word��5j      $
��Left=�6'   $��23��6B   $��
105,55,0,0q�6N   $ NoWrap=�6b   $�� ��6x   $	��Top=�6�   $	��205��6�   �� 5k   
   -   5        $ directory_Path��5k      $
��Left=�6*   $��23��6E   $��
105,83,0,0q�6Q   $ NoWrap=�6e   $�� ��6{   $	��Top=�6�   $	��148��6�   �� 5m   
   -   5        $��Search��5m      $
��Left=�6"   $��
315,27,0,0q�6=   $	��Top=�6Q   $��75��6i   $��79��6t   6�   �� 5n   
   -   5        $��Select��5n      $
��Left=�6"   $��
258,83,0,0q�6=   $	��Top=�6Q   $��52��6i   $��23��6t   6�   �� 5p   
   -   5         ��Name$ preview_Box��5p      $��Center=�6)   $��
10,10,18,0q�6F   $��1��6Z   $
��Wrap=�6g   $��Some Test File��6{   $	��Top=�6�   $��2��6�   $	��249��6�   $	��772��6�   ��. $
��Auto=�6�   $
��Auto=�6+  � 5r   
   -	   5         �Name$ progress_Bar��5r      $��1��6,   $��Right=�6<   $��18��6X   $��	0,10,18,0q�6d   $	��Top=�6w   $	��372��6�   �� 5t   
   -
   5         ��Name$ 
found_List��5t      $��1��6&   $��Right=�66   $	��257��6R   $��	0,33,18,0q�6_   $	��Top=�6r   $	��372��6�   ��5u      �� 5v      .R�5w      � $	��0,2q�6    5x      �� 5y      $	��100 �6/   �� 5z      $��* �6/   .+�5|      �� $��0��6    ��60   �� *name+�� 5}      $��1��6    ��60   �� *path+5~      5      5�      5�      5�      