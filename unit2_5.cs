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
    public partial class unit2_5 : Form
    {
        public unit2_5()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            System.IO.FileStream fs = new System.IO.FileStream("D:\\janvi(C#)\\unit1_5\\file2.bin", System.IO.FileMode.OpenOrCreate);
            System.IO.BinaryWriter bw = new System.IO.BinaryWriter(fs);
            Int16 EmpCode = Convert.ToInt16(textBox1.Text);
            string EmpName = textBox2.Text;
            Single sal = Convert.ToSingle(textBox3.Text);
            bw.Write(EmpCode);
            bw.Write(EmpName);
            bw.Write(sal);
            bw.Close();
            fs.Close();
            MessageBox.Show("Data is written to the file successfully :", "Success");

        }

        private void button3_Click(object sender, EventArgs e)
        {
            textBox1.Text = "";
            textBox2.Text = "";
            textBox3.Text = "";
         }

        private void button2_Click(object sender, EventArgs e)
        {
            System.IO.FileStream fs = new System.IO.FileStream("D:\\janvi(C#)\\unit1_5\\file2.bin", System.IO.FileMode.OpenOrCreate);
            System.IO.BinaryReader br = new System.IO.BinaryReader(fs);
            Int16 EmpCode = br.ReadInt16();
            string EmpName = br.ReadString();
            Single sal = br.ReadSingle();
            textBox1.Text = Convert.ToString(EmpCode);
            textBox2.Text = EmpName;
            textBox3.Text = Convert.ToString(sal);
        }
    }
}
