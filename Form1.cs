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
    public partial class Form1 : Form
    {

        double oldvalue;
        string opr;
        string power;
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            textBox1.Text += Convert.ToString(button1.Text);
        }


        private void button2_Click(object sender, EventArgs e)
        {
            textBox1.Text += Convert.ToString(button2.Text);
        }

        private void button3_Click(object sender, EventArgs e)
        {
            textBox1.Text += Convert.ToString(button3.Text);
        }

        private void button4_Click(object sender, EventArgs e)
        {
            textBox1.Text += Convert.ToString(button4.Text);
        }

        private void button5_Click(object sender, EventArgs e)
        {
            textBox1.Text += Convert.ToString(button5.Text);
        }

        private void button6_Click(object sender, EventArgs e)
        {
            textBox1.Text += Convert.ToString(button6.Text);
        }

        private void button7_Click(object sender, EventArgs e)
        {
            textBox1.Text += Convert.ToString(button7.Text);
        }

        private void button8_Click(object sender, EventArgs e)
        {
            textBox1.Text += Convert.ToString(button8.Text);
        }

        private void button9_Click(object sender, EventArgs e)
        {
            textBox1.Text += Convert.ToString(button9.Text);
        }

        private void btn10_Click(object sender, EventArgs e)
        {
            textBox1.Text += Convert.ToString(btn10.Text);
        }

        private void btndot_Click(object sender, EventArgs e)
        {
            textBox1.Text += Convert.ToString(btndot.Text);
        }

        private void btnequal_Click(object sender, EventArgs e)
        {
            if (textBox1.Text != "")
            {
                if (opr == "+")
                {
                    oldvalue = oldvalue + Convert.ToDouble(textBox1.Text);
                    textBox1.Text = oldvalue.ToString();
                }
                if (opr == "-")
                {
                    oldvalue = oldvalue - Convert.ToDouble(textBox1.Text);
                    textBox1.Text = oldvalue.ToString();
                }
                if (opr == "*")
                {
                    oldvalue = oldvalue * Convert.ToDouble(textBox1.Text);
                    textBox1.Text = oldvalue.ToString();
                }
                if (opr == "/")
                {
                    oldvalue = oldvalue / Convert.ToDouble(textBox1.Text);
                    textBox1.Text = oldvalue.ToString();
                }
                if(power == "pow")
                {
                    textBox1.Text = Math.Pow(oldvalue, Convert.ToDouble(textBox1.Text)).ToString();
                    power = "";

                }
            }
        }
        private void btnplus_Click(object sender, EventArgs e)
        {
            if (textBox1.Text != "")
            {
                oldvalue = Convert.ToDouble(textBox1.Text);
            }
            opr ="+";
            textBox1.Text = " ";
            //textbox1.clear
        }

        private void btnminus_Click(object sender, EventArgs e)
        {
            if (textBox1.Text != "")
            {
                oldvalue = Convert.ToDouble(textBox1.Text);
            }
            opr = "-";
            textBox1.Text = " ";
            //textbox1.clear
        }

        private void btnmultiply_Click(object sender, EventArgs e)
        {
            if (textBox1.Text != "")
            {
                oldvalue = Convert.ToDouble(textBox1.Text);
            }
            opr = "*";
            textBox1.Text = " ";
            //textbox1.clear
        }



       

        private void btnsqrt_Click(object sender, EventArgs e)
        {

        }

        private void btnlog_Click(object sender, EventArgs e)
        {
            textBox1.Text = Math.Log10(Convert.ToDouble(textBox1.Text)).ToString();
        }

        private void btnclr_Click(object sender, EventArgs e)
        {
            textBox1.Clear();
            power = " ";
            opr = " ";
        }

        private void btnsin_Click(object sender, EventArgs e)
        {

        }

        private void btncos_Click(object sender, EventArgs e)
        {

        }

        private void btnx_Click(object sender, EventArgs e)
        {
            int i, num, ans;
            num = Convert.ToInt32(textBox1.Text);
            ans=1;
            for(i=1; i<=num;i++)
            {
                ans = ans * i;
               
            }
            textBox1.Text = ans.ToString();

      
        }

        private void btn10_Click_1(object sender, EventArgs e)
        {
            textBox1.Text += Convert.ToString(btn10.Text);
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void btnslash_Click(object sender, EventArgs e)
        {
            if (textBox1.Text != "")
            {
                oldvalue = Convert.ToDouble(textBox1.Text);
            }
            opr = "/";
            textBox1.Text = " ";
            //textbox1.clear
        }

        private void btnpower_Click(object sender, EventArgs e)
        {
            if(textBox1.Text !="")
            {
                oldvalue = Convert.ToDouble(textBox1.Text);
                power = "pow";
                textBox1.Text = "";
            }
        }

        private void btnsqr_Click(object sender, EventArgs e)
        {
            textBox1.Text = Math.Pow(Convert.ToDouble(textBox1.Text),2).ToString();
        }

        private void btnsqrt_Click_1(object sender, EventArgs e)
        {
             textBox1.Text = Math.Sqrt(Convert.ToDouble(textBox1.Text)).ToString();
        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }
    }
}


