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
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void hScrollBar1_Scroll(object sender, ScrollEventArgs e)
        {
            int r, g, b;
            r = hScrollBar1.Value;
            g = hScrollBar2.Value;
            b = hScrollBar3.Value;

            label4.Text = Convert.ToString(r);
            label5.Text = Convert.ToString(g);
            label6.Text = Convert.ToString(b);

            pictureBox1.BackColor = Color.FromArgb(255, r, g, b);
        }

        private void btnapply_Click(object sender, EventArgs e)
        {
            this.BackColor = pictureBox1.BackColor;
        }
    }
}
