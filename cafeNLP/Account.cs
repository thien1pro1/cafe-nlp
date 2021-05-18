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
    public partial class Account : Form
    {
        public Account()
        {
            InitializeComponent();
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void txbAccount_TextChanged(object sender, EventArgs e)
        {
            
        }

        private void Account_Load(object sender, EventArgs e)
        {
            txtUserName.Text = UserInfo.userName;
            SqlCommand com = new SqlCommand("Select * FROM Account where username ='"+txtUserName.Text+"'", ConDB.con);
            SqlDataReader dr = com.ExecuteReader();
            
            while (dr.Read())
            {

                txtUserName.Text = dr.GetString(3);
                txtAccount.Text  = dr.GetString(1);
            }
            dr.Dispose();
        }

        private void label6_Click(object sender, EventArgs e)
        {

        }

        private void button2_Click(object sender, EventArgs e)
        {
        
            if (txtNewPass.Text.Equals(""))
            {
                MessageBox.Show("Vui lòng nhập mật khẩu mới", "Thông báo");
                return;
            }
            else if (txtRePass.Text.Equals(""))
            {
                MessageBox.Show("Vui lòng nhập lại mật khẩu mới", "Thông báo");
                return;
            }

            if (!txtNewPass.Text.Equals(txtRePass.Text))
            {
                MessageBox.Show("Mật khẩu mới và nhập lại mật khẩu không khớp", "Thông báo");
                return;
            }


            SqlCommand com = new SqlCommand("Update Account set pwd = '" + UserInfo.MD5Hash(txtNewPass.Text) + "' where username = '" + txtAccount.Text + "'", ConDB.con);
            try
            {

                com.ExecuteNonQuery();
                
                MessageBox.Show("Cập nhập thành công", "Thông báo");
                
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }
    }
}
