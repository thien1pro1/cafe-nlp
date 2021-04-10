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
  
    public partial class Mainpage : Form
    {
        public Mainpage()
        {
            InitializeComponent();
        }
        public void setOrder(string id)
        {
            OrderInfo o = new OrderInfo();
            o.idTable = id;
            cbbCatelory.Enabled = true;
            cbbFood.Enabled = false;
        }

        private void panel1_Paint(object sender, PaintEventArgs e)
        {

        }

        private void button2_Click(object sender, EventArgs e)
        {

        }

        private void button9_Click(object sender, EventArgs e)
        {

        }

        private void tableLayoutPanel1_Paint(object sender, PaintEventArgs e)
        {

        }

        private void Mainpage_Load(object sender, EventArgs e)
        {
            SqlCommand com = new SqlCommand("Select * FROM Catelory", ConDB.con);
            SqlDataReader dr = com.ExecuteReader();
            cbbCatelory.DisplayMember = "Text";
            cbbCatelory.ValueMember = "Value";
            while (dr.Read())
            {

                cbbCatelory.Items.Add(new SelectBox { Text = dr.GetString(1), Value = dr.GetString(0) });

            }
            dr.Dispose();

            //discount_button
            SelectBox objDiscount = cbbDiscount.SelectedItem as SelectBox;

            SqlCommand com1 = new SqlCommand("Select * FROM Discount ", ConDB.con);
            SqlDataReader dr1 = com1.ExecuteReader();
            cbbDiscount.DisplayMember = "Text";
            cbbDiscount.ValueMember = "Value";
            while (dr1.Read())
            {

                cbbDiscount.Items.Add(new SelectBox { Text = dr1.GetString(1), Value = dr1.GetString(0) });

            }
            dr1.Dispose();
            /*
            SqlCommand com1 = new SqlCommand("Select showname FROM Account where username = '" + UserInfo.userName + "'", ConDB.con);
            SqlDataReader dr1 = com1.ExecuteReader();
            while (dr1.Read())
            {
                lbShowName.Text = dr1.GetString(2);
            }
            dr1.Dispose();
            */
        }

        private void thôngTinTàiKhoảnToolStripMenuItem_Click(object sender, EventArgs e)
        {
            
        }

        private void đăngXuấtToolStripMenuItem_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void thôngTinCáNhânToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Account a = new Account();
            a.ShowDialog();
        }

        private void listView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void adminToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void panel3_Paint(object sender, PaintEventArgs e)
        {

        }

        private void adminToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            Admin ad = new Admin();
            ad.ShowDialog();
        }

        private void cbbCatelory_SelectedIndexChanged(object sender, EventArgs e)
        {
            cbbFood.Items.Clear();
            SelectBox obj = cbbCatelory.SelectedItem as SelectBox;
            cbbFood.Text = "";
            cbbFood.Enabled = true;
            if (obj != null)
            {
                SqlCommand com = new SqlCommand("Select * FROM Food where caletoryFood ='" + obj.Value + "'", ConDB.con);
                SqlDataReader dr1 = com.ExecuteReader();
                cbbFood.DisplayMember = "Text";
                cbbFood.ValueMember = "Value";
                while (dr1.Read())
                {

                    cbbFood.Items.Add(new SelectBox { Text = dr1.GetString(1), Value = dr1.GetString(0) });

                }
                dr1.Dispose();
            }

        }

        private void lsvBill_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void panel2_Paint(object sender, PaintEventArgs e)
        {

        }

        private void btnTable1_Click(object sender, EventArgs e)
        {
            setOrder("1");
        }

        private void btnTable2_Click(object sender, EventArgs e)
        {
            setOrder("2");
        }

        private void btnTable3_Click(object sender, EventArgs e)
        {
            setOrder("3");

        }

        private void cbbFood_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        private void btnTable4_Click(object sender, EventArgs e)
        {
            setOrder("4");
        }

        private void btnTable5_Click(object sender, EventArgs e)
        {
            setOrder("5");
        }

        private void btnTable6_Click(object sender, EventArgs e)
        {
            setOrder("6");
        }

        private void btnTable7_Click(object sender, EventArgs e)
        {
            setOrder("7");
        }

        private void btnTable8_Click(object sender, EventArgs e)
        {
            setOrder("8");
        }

        private void btnTable9_Click(object sender, EventArgs e)
        {
            setOrder("9");
        }

        private void btnTable10_Click(object sender, EventArgs e)
        {
            setOrder("10");
        }

        private void btnTable11_Click(object sender, EventArgs e)
        {
            setOrder("11");
        }

        private void btnTable12_Click(object sender, EventArgs e)
        {
            setOrder("12");
        }

        private void btnTable13_Click(object sender, EventArgs e)
        {
            setOrder("13");
        }

        private void btnTable14_Click(object sender, EventArgs e)
        {
            setOrder("14");
        }

        private void btnTable15_Click(object sender, EventArgs e)
        {
            setOrder("15");
        }

        private void btnTable16_Click(object sender, EventArgs e)
        {
            setOrder("16");
        }

        private void btnAddFood_Click(object sender, EventArgs e)
        {

        }

        private void comboBox2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void btnDiscount_Click(object sender, EventArgs e)
        {

        }

        private void menuStrip1_ItemClicked(object sender, ToolStripItemClickedEventArgs e)
        {

        }
    }
}
