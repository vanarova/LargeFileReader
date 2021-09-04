using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.IO;
using System.IO.MemoryMappedFiles;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace LargeFileRead_wpf
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
            
        }


        private static long position = 0;
        private static MemoryMappedFile memoryMappedFile;
        private static MemoryMappedViewStream memoryMappedViewStream;
        private void Button_Click(object sender, RoutedEventArgs e)
        {
            FileInfo info = null;
            OpenFileDialog fileOpenDialog = new OpenFileDialog();
            if (fileOpenDialog.ShowDialog() == true)
                info = new FileInfo(fileOpenDialog.FileName);
            memoryMappedFile = MemoryMappedFile.CreateFromFile(fileOpenDialog.FileName);
            memoryMappedViewStream = memoryMappedFile.CreateViewStream(0, info.Length);
           
            txtBlock.Text = Read(30000);
            //textBox1.Text = Read(info.Length);
        }

        public static bool IsScrolledToEnd(TextBox textBox)
        {
            return textBox.VerticalOffset + textBox.ViewportHeight == textBox.ExtentHeight;
        }
        public static string Read(long length)
        {
            StringBuilder resultAsString = new StringBuilder();

            //for (long i = 0; i < position; i++)
            //{
            //    //skip
            //    int result = memoryMappedViewStream.ReadByte();
            //    if (result == -1)
            //    {
            //        break;
            //    }
            //}
            for (long i = 0; i < length; i++)
            {
                //Reads a byte from a stream and advances the position within the stream by one byte, or returns -1 if at the end of the stream.
                int result = memoryMappedViewStream.ReadByte();

                if (result == -1)
                {
                    break;
                }

                char letter = (char)result;

                resultAsString.Append(letter);
            }

            //position = position + length;
            return resultAsString.ToString();
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
           
            txtBlock.AppendText(Read(60000));
          
        }

        private void Button_Click_2(object sender, RoutedEventArgs e)
        {
            if (memoryMappedFile != null && memoryMappedViewStream != null)
            {
                memoryMappedFile.Dispose();
                memoryMappedViewStream.Dispose();
                memoryMappedFile = null;
            }
            this.Close();
        }

        private void txtBlock_Scroll(object sender, System.Windows.Controls.Primitives.ScrollEventArgs e)
        {
            if (IsScrolledToEnd(txtBlock))
            {
                //txtBlock.Text = Read(30000);
                txtBlock.AppendText(Read(60000));
                //Read(30000);
            }
        }

        private void load_Loaded(object sender, RoutedEventArgs e)
        {
            
        }

        private void rootGrid_Loaded(object sender, RoutedEventArgs e)
        {
            //txtBlock.MaxHeight = rootGrid.RowDefinitions[0].Height.Value;
        }
    }
}
