   M S B A M L   `   `   `  ����T  PCefSharp.Wpf, Version=55.0.0.0, Culture=neutral, PublicKeyToken=40c4b6fc221f4138A0clr-namespace:CefSharp.Wpf;assembly=CefSharp.WpfCefSharp.Wpf  5      c _System.Windows.Interactivity, Version=4.5.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35qPclr-namespace:System.Windows.Interactivity;assembly=System.Windows.InteractivitySystem.Windows.Interactivity 5      E ACrazyHacks, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:CrazyHacks.ViewCrazyHacks.View 5      $   CrazyHacks.View.XssControlView   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      EcefSharp0clr-namespace:CefSharp.Wpf;assembly=CefSharp.Wpf     5      ^iPclr-namespace:System.Windows.Interactivity;assembly=System.Windows.Interactivity     5      /localclr-namespace:CrazyHacks.View     5        � DataContext  5      ��  �� Path$ 
XssControl�   Locator �� Source# [  .��5      �  � RowDefinitions 5   
   �� 5      $��30 �6   �� 5      $��2* �6   �� 5      $��5 �6   �� 5      $��2* �6    � ColumnDefinitions 5   
   �� 5      �� 5      $��5 �6   �� 5      .+�5   
   � -   5         �Name$ ParentPanel��5      $��0��6$   $��0��61   $��3��6A    5      �� 5      �� 5      �� 5      .+�5      d� -   5         d�Name$ 
SearchBox1��5      $��0��6/   
������  d� 	IsChecked$
 TrueY�6X   $��0 4 0 4q�6i   $
��Left=�6z   .��5      � .+�5       �� 
���������6    �� $ ActualWidth� �� ElementName$ 
SearchBox1��5!      �� 5"      $��Center=�6    $��Center=�6=   
Search Box6e   5#      5$      d� 5%      -   5        $ 
SearchBox2��5%      $��1��6/   
������ $
 TrueY�6X   $��0 4 0 4q�6i   $
��Left=�6{   .��5&      � .+�5'      �� 
���������6    �� $ ActualWidth�$ 
SearchBox2��5(      �� 5)      $��Center=�6    $��Center=�6=   
Search Box6e   5*      5+      d� 5,      -   5        $ 
SearchBox3��5,      $��2��6/   
������ $
 TrueY�6X   $��0 4 0 4q�6i   $
��Left=�6z   .��5-      � .+�5.      �� 
���������6    �� $ ActualWidth�$ 
SearchBox3��5/      �� 50      $��Center=�6    $��Center=�6=   
Search Box6e   51      52      53      &   System.Windows.Controls.DataGrid  54   
   	   AutoGenerateColumns	 .  $��1��6Q   $��0��6^   ��6   �� *	XssTarget+.  (System.Windows.Interactivity.Interaction
   Triggers
 55      /  )System.Windows.Interactivity.EventTrigger  56         	EventName$ SelectionChanged��6!   .  (System.Windows.Interactivity.TriggerBase   Actions. 57      6  0System.Windows.Interactivity.InvokeCommandAction     Command 6,   �� *
IsSelected+   CommandParameter 58      �� $ SelectedItems� �� RelativeSource ��  �� Mode$ FindAncestor=� �� AncestorType$ DataGridL�59       � ContextMenu 5;      �� 5<      -   5         ��Name$
 Menu��5<      .@�5=      m� $��Delete��6   61   m� 5>      $
��Copy��6   6/   m� 5@      -   5         m�Name$ Sender��5@      $	��XSS��60    m� Command 5A   #   �� *Send2XssViewModel+6K   5B         Columns 5E      0  *System.Windows.Controls.DataGridTextColumn  5F      ,  &System.Windows.Controls.DataGridColumn   Header$ No��6%   1  +System.Windows.Controls.DataGridBoundColumn   Binding 61   �� *No+ �� Mode$ OneWay=�  5G      $
 Host��6%      MaxWidth$	 200Q�63    6B   �� *Host+$ OneWay=�  5H      $ Method��6%    65   �� *Method+$ OneWay=�  5I      $	 URL��6%   $	 500Q�62    6A   �� *URL+$ OneWay=�4	  .System.Windows.Controls.DataGridCheckBoxColumn	  5J      $ Params��6)    69   �� *Params+$ OneWay=�	  5K      $	 SSL��6)    66   �� *SSL+$ OneWay=�  5L      $ Status��6%    65   �� *Status+$ OneWay=�  5M      $ 	Extension��6%    68   �� *	Extension+$ OneWay=�  5N      $ IP��6%    61   �� *IP+$ OneWay=�5P      %
   CefSharp.Wpf.ChromiumWebBrowser
  5Q   
   -   5         
 Name$ XssChromeBrowser��5Q   C   $��1��6&   $��2��63    
  Address$ http://www.google.com��6]   �� 5R   
   $��2��6   $��0��6$   $��5��64   $��Stretch=�6?   6_   �� 5S   
   $��1��6   $��1��6'   $��3��64   $��5��6E   $��Stretch=�6O   6o   �� 5T   
   $��2��6   $��2��6$   $��5��64   $��Stretch=�6?   6_   �� 5U   
   $��3��6   $��0��6    $��Information��60   $��0 5 0 0q�6E   .��5V      �� .+�5W      �� .@�5X      �� 6$   �� 5Y      6$   �� 5Z      6$   �� 5[      6$   5\      5]      5^      5_      5`      