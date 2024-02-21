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
    public partial class unit2_2 : Form
    {
        string path;
        int pos;
        public unit2_2()
        {
            InitializeComponent();
        }

        private void editToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void toolStripSeparator1_Click(object sender, EventArgs e)
        {

        }

        private void bolddToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Font fnt = new Font(richTextBox1.SelectionFont,FontStyle.Bold);
            richTextBox1.SelectionFont = fnt;


        }

        private void newToolStripMenuItem_Click(object sender, EventArgs e)
        {
            richTextBox1.Clear();
            richTextBox1.Focus();

        }

        private void openToolStripMenuItem_Click(object sender, EventArgs e)
        {
            openFileDialog1.Filter = "All RichText Files|*.rtf|*All Text Files|*.txt|*All Files|*.*";
            if(openFileDialog1.ShowDialog()==DialogResult.OK)
            {
                path = openFileDialog1.FileName;
                richTextBox1.LoadFile(path,RichTextBoxStreamType.PlainText);
            }
        }

        private void saveToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if(path == null)
            {
                saveFileDialog1.Filter = "All RichText Files|*.rtf|*All Text Files|*.txt|*All Files|*.*";
                if (saveFileDialog1.ShowDialog() == DialogResult.OK)
                {
                    path =saveFileDialog1.FileName;
                    richTextBox1.SaveFile(path, RichTextBoxStreamType.PlainText);
                }
            }
            else
            {
                richTextBox1.SaveFile(path,RichTextBoxStreamType.PlainText);
            }
        }

        private void saveASToolStripMenuItem_Click(object sender, EventArgs e)
        {
            saveFileDialog1.Filter = "All RichText Files|*.rtf|All Text Files|*.txt|All Files|*.*";
            if (saveFileDialog1.ShowDialog() == DialogResult.OK)
            {
                path = saveFileDialog1.FileName;
                richTextBox1.SaveFile(path, RichTextBoxStreamType.PlainText);
            }
        }
  
        private void exitToolStripMenuItem_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void cutToolStripMenuItem_Click(object sender, EventArgs e)
        {
            richTextBox1.Cut();
        }

        private void copyToolStripMenuItem_Click(object sender, EventArgs e)
        {
            richTextBox1.Copy();
        }

        private void pasteToolStripMenuItem_Click(object sender, EventArgs e)
        {
            richTextBox1.Paste();
        }

        private void undoToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (richTextBox1.CanUndo)
                richTextBox1.Undo();
        }

        private void redoToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (richTextBox1.CanRedo)
                richTextBox1.Redo();
        }

        private void italicToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Font fnt = new Font(richTextBox1.SelectionFont, FontStyle.Italic);
            richTextBox1.SelectionFont = fnt;
        }

        private void underlineToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Font fnt = new Font(richTextBox1.SelectionFont, FontStyle.Underline);
            richTextBox1.SelectionFont = fnt;
        }

        private void fontToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (fontDialog1.ShowDialog() == DialogResult.OK)
                richTextBox1.SelectionFont = fontDialog1.Font;
        }

        private void colorToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (colorDialog1.ShowDialog() == DialogResult.OK)
                richTextBox1.SelectionColor = colorDialog1.Color;
        }

        private void unit2_2_Load(object sender, EventArgs e)
        {

        }

        private void btnfind_Click(object sender, EventArgs e)
        {
            if(chkmatchcase.Checked==true)
            {
                pos = richTextBox1.Find(txtfind.Text, 0, richTextBox1.Text.Length - 1, RichTextBoxFinds.MatchCase);
            }
            else
            {
                pos = richTextBox1.Find(txtfind.Text, 0, richTextBox1.Text.Length - 1, RichTextBoxFinds.WholeWord);
            }
            if(pos >= 0)
            {
                richTextBox1.Select(pos, txtfind.Text.Length);
                richTextBox1.SelectionColor = Color.Green;
            }
        }

        private void btnfindnext_Click(object sender, EventArgs e)
        {
            if(chkmatchcase.Checked== true)
            {
                pos = richTextBox1.Find(txtfind.Text, pos + 1, richTextBox1.Text.Length - 1, RichTextBoxFinds.MatchCase);
            }
            else
            {
                pos = richTextBox1.Find(txtfind.Text, pos + 1, richTextBox1.Text.Length - 1, RichTextBoxFinds.WholeWord);
            }
            if (pos >= 0)
            {
                richTextBox1.Select(pos, txtfind.Text.Length);
                richTextBox1.SelectionColor = Color.Green;
            }
        }

        private void btnreplce_Click(object sender, EventArgs e)
        {
            richTextBox1.SelectedText = txtreplace.Text;
        }

        private void btnreplaceall_Click(object sender, EventArgs e)
        {
            pos = 0;
            btnfind.PerformClick();
            if(pos != 0)
            {
                btnreplce.PerformClick();
                while(pos != -1)
                {
                    btnfindnext.PerformClick();
                    if (pos != -1)
                        btnreplce.PerformClick();
                }
            }
        }
    }
}
