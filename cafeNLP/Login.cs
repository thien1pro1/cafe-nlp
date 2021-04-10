using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
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

                txtPwd.UseSystemPasswordChar = true;
           
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (txtUserName.Text.Equals(""))
            {
                MessageBox.Show("Vui lòng nhập tài khoản", "Thông báo");
                return;
            }
            else if (txtPwd.Text.Equals(""))
            {
                MessageBox.Show("Vui lòng nhập mật khẩu", "Thông báo");
                return;
            }


            try
            {
            
                SqlCommand com = new SqlCommand("select * FROM Account where username = '" + txtUserName.Text + "' and pwd ='"+txtPwd.Text+"'", ConDB.con);
                SqlDataReader dr1 = com.ExecuteReader();

              
                if (!dr1.Read())
                {
                    //check da nhap thong tin chua
                    //Console.WriteLine(":)))))))))))))");
                    MessageBox.Show("Sai tài khoản hoặc mật khẩu!", "Thông báo");

                    dr1.Dispose();
                }
                else
                {
                    UserInfo.userName = dr1.GetString(1);
                    Console.WriteLine(dr1.Read());
                    dr1.Dispose();
                    Mainpage mb = new Mainpage();
                    this.Hide();
                    mb.ShowDialog();
                    this.Show();
                }

               
            }
            catch(Exception ex)
            {
               
            }
        }

        private void txtUserName_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
