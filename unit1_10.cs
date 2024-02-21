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
    public partial class unit1_10 : Form
    {
        public unit1_10()
        {
            InitializeComponent();
        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            if(progressBar1.Value <100)
            {
                progressBar1.Value += 10;
            }
            else
            {
                timer1.Enabled = false;
                unit1_10_10 frm = new unit1_10_10();
                frm.Show();
                this.Hide();
            }
        }

        private void progressBar1_Click(object sender, EventArgs e)
        {

        }
    }
}
