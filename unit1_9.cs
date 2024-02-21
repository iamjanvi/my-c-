using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace unit_1
{
    public partial class unit1_9 : Form
    {
        public unit1_9()
        {
            InitializeComponent();
        }

        private void rdbindia_CheckedChanged(object sender, EventArgs e)
        {
            if(rdbindia.Checked==true)
            {
                picBox1.Image = Image.FromFile("D:\\janvi\\unit1_5\\image\\india.png");
            }
        }

        private void rdbus_CheckedChanged(object sender, EventArgs e)
        {
            if (rdbus.Checked == true)
            {
                picBox1.Image = Image.FromFile("D:\\janvi\\unit1_5\\image\\us.png");
            }
        }

        private void rdbcanda_CheckedChanged(object sender, EventArgs e)
        {
            if (rdbcanda.Checked == true)
            {
                picBox1.Image = Image.FromFile("D:\\janvi\\unit1_5\\image\\canada.png");
            }
        }

        private void rdbsrilanka_CheckedChanged(object sender, EventArgs e)
        {
            if (rdbsrilanka.Checked == true)
            {
                picBox1.Image = Image.FromFile("D:\\janvi\\unit1_5\\image\\srilanka.png");
            }
        }
    }
}
