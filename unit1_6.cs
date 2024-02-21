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
    public partial class unit1_6 : Form
    {
        Boolean player;

        public unit1_6()
        {
            InitializeComponent();
        }

        

        private void button1_Click(object sender, EventArgs e)
        {
            if(((Button)sender).Text !="x" && ((Button)sender).Text !="0")
            {
                if (player == false)
                    ((Button)sender).Text = "x";
                else ((Button)sender).Text = "0";
                checkwinner();
                player = !player;


            }
        }

        private void checkwinner()
        {
            string smb;
            string msgplayer;
            if (player == false)
            {
                smb = "x";
                msgplayer = "player 1";
            }

            else
            {
                smb = "0";
                msgplayer = "player 2";
            }
                if(button1.Text == smb && button2.Text == smb && button3.Text == smb)
                {
                    MessageBox.Show(msgplayer + " win!!! ");
                    cleargame();
                }
                else if (button4.Text == smb && button5.Text == smb && button6.Text == smb)
                {
                    MessageBox.Show(msgplayer + " win!!! ");
                    cleargame();
                }

                else if (button7.Text == smb && button8.Text == smb && button9.Text == smb)
                {
                    MessageBox.Show(msgplayer + " win!!! ");
                    cleargame();
                }

                else if (button1.Text == smb && button4.Text == smb && button7.Text == smb)
                {
                    MessageBox.Show(msgplayer + " win!!! ");
                    cleargame();
                }

                else if (button2.Text == smb && button5.Text == smb && button8.Text == smb)
                {
                    MessageBox.Show(msgplayer + " win!!! ");
                    cleargame();
                }

                else if (button3.Text == smb && button6.Text == smb && button9.Text == smb)
                {
                    MessageBox.Show(msgplayer + " win!!! ");
                    cleargame();
                }

                else if (button1.Text == smb && button5.Text == smb && button9.Text == smb)
                {
                    MessageBox.Show(msgplayer + " win!!! ");
                    cleargame();
                }

                else if (button3.Text == smb && button5.Text == smb && button7.Text == smb)
                {
                    MessageBox.Show(msgplayer + " win!!! ");
                    cleargame();
                }
                else
                {

                }
            
        }



        private void cleargame()
        {
            foreach(var control in this.Controls)
            {
                if(control.GetType()== typeof(Button))
                {
                    ((Button)control).Text = "";
                }
            }
            player = false;
        }


    }
}
