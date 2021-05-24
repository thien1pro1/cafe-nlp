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
    public partial class Admin : Form
    {
        public Admin()
        {
            InitializeComponent();
            LoadAccountList();
            fetchListFood();
        }

        void fetchListFood ()
        {
            SqlCommand comOrder = new SqlCommand("select f.nameFood, f.priceFood, f.codeFood, c.nameCatelory from Food as f join Catelory as c on c.codeCatelory = f.caletoryFood order by c.nameCatelory", ConDB.con);
            listFood.Items.Clear();
            try
            {
                SqlDataReader dr = comOrder.ExecuteReader();
                int index = 1;
                while (dr.Read())
                {
                    listFood.Items.Add(new ListViewItem(new string[] { index.ToString(), dr.GetInt32(2).ToString(), dr.GetString(0), dr.GetString(3), dr.GetInt32(1).ToString() }));

                    index += 1;
                }
                dr.Dispose();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, " Thông Báo");
            }
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
            SqlCommand com = new SqlCommand("Select * FROM Catelory", ConDB.con);
            SqlDataReader dr = com.ExecuteReader();
            cbbCatelory.DisplayMember = "Text";
            cbbCatelory.ValueMember = "Value";
            cbbCatelory.Items.Clear();
           
            while (dr.Read())
            {

                cbbCatelory.Items.Add(new SelectBox { Text = dr.GetString(1), Value = dr.GetString(0) });

            }
            dr.Dispose();
            fetchListFood();
        }

        private void dtgvFood_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void btnEditFood_Click(object sender, EventArgs e)
        {
            
            SqlCommand com = new SqlCommand("Update Food set nameFood = '" + txtFoodName.Text + "' cateloryFood = '"+txtNameCatelory.Text +"' priceFood ='"+txtPrice.Text+"' where codeName = '" +txtFoodID.Text + "'", ConDB.con);
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

        private void btnAddFood_Click(object sender, EventArgs e)
        {
            if(txtFoodID.Text != null)
            {


                SqlCommand com = new SqlCommand("update food set nameFood = @nameFood, priceFood = @price, caletoryFood = @category where codeFood = @id", ConDB.con);
                com.Parameters.AddWithValue("@nameFood", txtFoodName.Text);
                com.Parameters.AddWithValue("@price", txtPrice.Value);
                com.Parameters.AddWithValue("@category", (cbbCatelory.SelectedItem as SelectBox).Value);
                com.Parameters.AddWithValue("@id", txtFoodID.Text);
                try
                {
                    com.ExecuteNonQuery();
                    MessageBox.Show("Cập nhật thành công", "Thông báo");
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);
                }
            }
          
        }

        private void comboBox1_DataSourceChanged(object sender, EventArgs e)
        {
           
        }



        private void tcBill_TabIndexChanged(object sender, EventArgs e)
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
            
        }

        private void listFood_KeyDown(object sender, KeyEventArgs e)
        {
            if (Keys.Delete == e.KeyCode)
            {
                foreach (ListViewItem listViewItem in ((ListView)sender).SelectedItems)
                {
                    ListViewItem item = listFood.SelectedItems[0];
                    SqlCommand deleteItem = new SqlCommand("delete from food where codeFood = @idSP", ConDB.con);
                    deleteItem.Parameters.AddWithValue("@idSP", listViewItem.SubItems[1].Text);
             
                    try
                    {
                        deleteItem.ExecuteNonQuery();
                        listViewItem.Remove();
                    }
                    catch (SqlException ex)
                    {
                        Console.WriteLine(ex.Message);
                    }

                }
            }
        }

        private void listFood_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                if (listFood.SelectedItems.Count > 0)
                {
                    String id = listFood.SelectedItems[0].SubItems[1].Text;
                    String foodName = listFood.SelectedItems[0].SubItems[2].Text;
                    String cateName = listFood.SelectedItems[0].SubItems[3].Text;
                    String price = listFood.SelectedItems[0].SubItems[4].Text;
                    txtFoodID.Text = id;
                    txtFoodName.Text = foodName;
                    for (int i = 0; i < cbbCatelory.Items.Count; i++)
                    {
                        Console.WriteLine((cbbCatelory.Items[i] as SelectBox).Value);
                        if ((cbbCatelory.Items[i] as SelectBox).Text == cateName)
                        {
                            cbbCatelory.SelectedIndex = i;
                        }
                    }

                    btnAddFood.Text = "Lưu";
                    txtPrice.Value = Int32.Parse(price);


                }
            }catch(Exception error)
            {
                Console.WriteLine(error);
            }
          
        }

        private void btnRemove_Click(object sender, EventArgs e)
        {
            txtFoodID.Text = null;
            txtFoodName.Text = null;
            txtPrice.Value = 0;
            cbbCatelory.SelectedIndex = -1;
            listFood.SelectedItems.Clear();
            btnAddFood.Text = "Thêm";
        }
    }
}
