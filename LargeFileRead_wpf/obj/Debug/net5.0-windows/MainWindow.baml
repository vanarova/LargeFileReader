   M S B A M L   `   `   `  ����L  HLargeFileRead_wpf, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:LargeFileRead_wpfLargeFileRead_wpf  5   	   "    LargeFileRead_wpf.MainWindow   5   	   \ XPresentationFramework, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089W SPresentationCore, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=5.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=5.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   1localclr-namespace:LargeFileRead_wpf     5   	   -   5          �Name$
  load��5   	    � Title$ 
MainWindow��5   	   $	��450��6   $	��800��6)   .��5	      � -   5        $��rootGrid��5	       � RowDefinitions 5
   
   �� 5      $��20 �6   �� 5      $��* �6    � ColumnDefinitions 5   
   �� 5      $��50 �6   �� 5      $��* �6   .+�5   
   ]� $��0��6   $��0��6$   .+�5      o� $	��Top=�6   .@�5      m� $��_File��6   .@�5      m� -   5        $��_Open��5      6.   m� 5      $��_Save��6   �� 5      m� 5      $��_Exit��6   5       5!      5"      �� 5#   
   -   5        $��txtBlock��5#      $��1��6$   $��2��61   $�� ��6E   $
��Auto��6M   " �� VerticalScrollBarVisibility$
 Auto=�6[   $ �� HorizontalScrollBarVisibility$ Disabled=�6~    �� TextWrapping$
 Wrap=�5$   9   $
��Auto��6M   �� 5%   
   $��0��6   $��2��6"   $��10,0,0,0q�62   $��LeftToRight=�6D    �� Orientation$ 
Horizontal=�6`   $��20��6y   $��20��6�   .+�5&      �� $��30��6   $
��Left=�6   $��20��6:   $��0q�6H   $��0q�6S   
�������.��6s   Skip:6z   �� 5'      $��40��6   $
��Left=�6!   $��20��6<   $��0q�6J   $��0q�6U   
�������6w   �� 5(      $��30��6   $
��Left=�6   $��20��6:   $��5,0,0,0q�6H   
�������.��6n   Mb6r   �� 5)      $��Refresh��6   $
��Left=�6'   $��20��6B   $��70��6N   $��0q�6Y   $��0q�6d    � ToolTip$ Loads more file content��6q   ���#abcabc6�   �� 5*      -   5        $��	Load more��5*      $
��Left=�6)   $��20��6D   $��70��6P   $��0q�6[   $��0q�6f   $ Loads more file content��6s   
�������6�   �� 5+      -   5        $
��Save��5+      $��20��6$   $��70��60   $��0q�6;   $ Loads more file content��6H   
�������6   5,      5-      5/      