﻿using System;
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
    public partial class unit2_6 : Form
    {
        public unit2_6()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            int result;
            result = fact(Convert.ToInt16(textBox1.Text));
                MessageBox.Show("Factorial of " + textBox1.Text + " is = " + Convert.ToString(result));

        }
        public int fact(int num)
        {
            int ans ,i;
            ans = 1;
            for(i=1;i<=num;i++)
                ans = ans * i;
                return ans;
        }

        private void button2_Click(object sender, EventArgs e)
        {
            checkEveorOdd(Convert.ToInt16(textBox2.Text));
        }
        public void checkEveorOdd(int num)
        {
            if (num % 2 == 0)
                MessageBox.Show(Convert.ToString(num) + " Is an Even number:"); 
            else
                MessageBox.Show(Convert.ToString(num) + " Is an Odd number:");
        }
    }
}
