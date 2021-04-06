using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace cafeNLP
{
    public partial class Login : Form
    {
        public Login()
        {
            InitializeComponent();
        }

        private void Login_Load(object sender, EventArgs e)
        {
            ConDB con = new ConDB();
            con.Connection();
        }

        private void Login_Activated(object sender, EventArgs e)
        {
            
        }

        private void Login_FormClosing(object sender, FormClosingEventArgs e)
        {
            if (MessageBox.Show("Bạn thật sự muốn thoát chương trình?", "Thông báo", MessageBoxButtons.OKCancel) != System.Windows.Forms.DialogResult.OK)

                e.Cancel = true;
        }

        private void btnBook_Click(object sender, EventArgs e)
        {
            Signup sn = new Signup();
            sn.Enabled = true;
            sn.Visible = true;
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void linkLabel1_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            Signup sn = new Signup();
            sn.Show();
        }

        private void checkBox1_CheckedChanged(object sender, EventArgs e)
        {

                txtpwd.UseSystemPasswordChar = true;
           
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            Mainpage mb = new Mainpage();
            this.Hide();
            mb.ShowDialog();
            this.Show();
        }
    }
}
