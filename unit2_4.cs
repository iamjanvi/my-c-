using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace unit2
{
    public partial class unit2_4 : Form
    {
        public unit2_4()
        {
            InitializeComponent();
        }

        private void btnwrite_Click(object sender, EventArgs e)
        {
            System.IO.FileStream fs = new System.IO.FileStream("D:\\janvi(C#)\\unit1_5\\myfile.txt", System.IO.FileMode.OpenOrCreate);
            System.IO.StreamWriter sw = new System.IO.StreamWriter(fs);
            sw.Write(textBox1.Text);
            MessageBox.Show("Data is written to the file successfully:", "Info:");
            sw.Close();
            fs.Close();

        }

        private void btnread_Click(object sender, EventArgs e)
        {
            System.IO.FileStream fs = new System.IO.FileStream("D:\\janvi(C#)\\unit1_5\\myfile.txt", System.IO.FileMode.OpenOrCreate);
            System.IO.StreamReader sr = new System.IO.StreamReader(fs);
            textBox2.Text = sr.ReadToEnd();
            sr.Close();
            fs.Close();
        }
    }
}
