﻿using System;
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
    public partial class Admin : Form
    {
        public Admin()
        {
            InitializeComponent();
            LoadAccountList();
        }
        void LoadAccountList()
        {

        }

        private void tcMenu_Click(object sender, EventArgs e)
        {

        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void dataGridView3_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void Admin_Load(object sender, EventArgs e)
        {

        }

        private void panel8_Paint(object sender, PaintEventArgs e)
        {

        }

        private void tcBill_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void dtgvFood_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void btnEditFood_Click(object sender, EventArgs e)
        {
            
            SqlCommand com = new SqlCommand("Update Food set nameFood = '" + txtFoodName.Text + "' cateloryFood = '"+txtNameCatelory.Text +"' priceFood ='"+nbudPrice.Text+"' where codeName = '" +txtFoodID.Text + "'", ConDB.con);
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

        private void btnSearch_Click(object sender, EventArgs e)
        {
            SqlCommand comOrder = new SqlCommand("select * from Food where nameFood ='"+txtFoodSearch.Text+"'", ConDB.con);
            
            // show list order
            listFood.Items.Clear();
            try
            {
                SqlDataReader dr = comOrder.ExecuteReader();
                int index = 1;
                while (dr.Read())
                {
                    listFood.Items.Add(new ListViewItem(new string[] { index.ToString(), dr.GetString(0), dr.GetString(3), dr.GetString(1), dr.GetInt32(2).ToString() }));
                    index += 1;
                }
                dr.Dispose();

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, " Thông Báo");
            }
            
        }
    }
}
