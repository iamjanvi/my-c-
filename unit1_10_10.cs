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
    public partial class unit1_10_10 : Form
    {
        public unit1_10_10()
        {
            InitializeComponent();
        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            label1.Left = label1.Left + 10;
            if(label1.Left >1000)
            {
                label1.Left = 0;
            }
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }
    }
}
