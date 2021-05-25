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
            fetchListAccount();
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

        void fetchListAccount()
        {
            SqlCommand comOrder = new SqlCommand("select * from Account", ConDB.con);
            listAccount.Items.Clear();
            try
            {

                SqlDataReader dr = comOrder.ExecuteReader();
                int index = 1;
                while (dr.Read())
                {
                    String r;
                    if (dr.GetInt32(4) == 0)
                    {
                        r = "Nhân viên";
                    }
                    else r = "Admin";

                    listAccount.Items.Add(new ListViewItem(new string[] { index.ToString(), dr.GetString(1), dr.GetString(3),r }));

                    index += 1;
                }
                dr.Dispose();
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
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
            if(txtFoodID.Text == "" || txtFoodID.Text == null)
            {
                SqlCommand com = new SqlCommand("insert into food  (nameFood,priceFood,caletoryFood) values ( @nameFood, @price, @category ) ", ConDB.con);
                com.Parameters.AddWithValue("@nameFood", txtFoodName.Text);
                com.Parameters.AddWithValue("@price", txtPrice.Value);
                com.Parameters.AddWithValue("@category", (cbbCatelory.SelectedItem as SelectBox).Value);

                try
                {
                    com.ExecuteNonQuery();
                    MessageBox.Show("Thêm thức uống thành công", "Thông báo");
                    fetchListFood();
                    resetForm();
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message);
                }


              
            }
            else
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
                    fetchListFood();
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
                        resetForm();
                    }
                    catch (SqlException ex)
                    {
                        Console.WriteLine(ex.Message);
                    }

                }
            }
        }

        private void listAcount_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void btnSearchAccount_Click(object sender, EventArgs e)
        {
            SqlCommand comOrder = new SqlCommand("select * from Account where username  LIKE @username or showname LIKE N'%"+txtAccountSearch.Text+"%'", ConDB.con);
            comOrder.Parameters.AddWithValue("@username", "%" + txtAccountSearch.Text + "%");
            

            // show list order
            listAccount.Items.Clear();
            try
            {
                SqlDataReader dr = comOrder.ExecuteReader();
                int index = 1;
                while (dr.Read())
                {
                    listAccount.Items.Add(new ListViewItem(new string[] { index.ToString(), dr.GetString(1), dr.GetString(3), dr.GetInt32(4).ToString() }));
                    index += 1;
                }
                dr.Dispose();

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, " Thông Báo");
            }
        }

        private void txtSearchAccount_TextChanged(object sender, EventArgs e)
        {

        }

        private void listAccount_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                if (listAccount.SelectedItems.Count > 0)
                {
                    String user = listAccount.SelectedItems[0].SubItems[1].Text;
                    String name = listAccount.SelectedItems[0].SubItems[2].Text;
                    String role = listAccount.SelectedItems[0].SubItems[3].Text;
                    txtAccountuser.Text = user;
                    txtAccountName.Text = name;
                    cbbAccountType.Text = role;

                }

            }
            catch (Exception ex)
            {
                Console.WriteLine(ex);
            }
            
        }

        private void btnEditAccount_Click(object sender, EventArgs e)
        {
            String user = txtAccountuser.Text;
            String name = txtAccountName.Text;
            String role = cbbAccountType.Text;
            int r = 0;
            if (role == "Admin") r = 1;
            else r = 0;
            SqlCommand com = new SqlCommand("Update Account set username = @username , showname = @showname, role = @r where username = @username", ConDB.con);
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

        private void btnAddAccount_Click(object sender, EventArgs e)
        {

        }

        private void label4_Click(object sender, EventArgs e)
        {

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
                      
                        if ((cbbCatelory.Items[i] as SelectBox).Text == cateName)
                        {
                            cbbCatelory.SelectedIndex = i;
                        }
                    }

                    btnAdd.Text = "Lưu";
                    txtPrice.Value = Int32.Parse(price);


                }
            }catch(Exception error)
            {
                Console.WriteLine(error);
            }
          
        }

        private void btnRemove_Click(object sender, EventArgs e)
        {
            resetForm();
        }

        public void resetForm()
        {
            txtFoodID.Text = null;
            txtFoodName.Text = null;
            txtPrice.Value = 0;
            cbbCatelory.SelectedIndex = -1;
            listFood.SelectedItems.Clear();
            btnAdd.Text = "Thêm";
        }

        private void btnViewBill_Click(object sender, EventArgs e)
        {
            listAnalyst.Items.Clear();
            string minDay = txtMinDay.Value.ToString("yyyy-MM-dd");
            string maxDay = txtMaxDay.Value.ToString("yyyy-MM-dd");
            Console.WriteLine(minDay + "   " + maxDay);
            SqlCommand com = new SqlCommand("select ta.date, ta.total_money, tb.total_SL from (select date, sum(o.money) as 'total_money' from[Order] as o where date between @min and @max group by date)AS ta join(select  o.date, sum(d.SL) as 'total_SL' from[Order] as o join DetailOrder as d on o.idOrder = d.idOrder where date between @min and @max group by o.date) AS tb on ta.date = tb.date", ConDB.con);
            com.Parameters.AddWithValue("@min", minDay);
            com.Parameters.AddWithValue("@max", maxDay);
            try
            {
                SqlDataReader dr = com.ExecuteReader();
       
                while (dr.Read())
                {
                    listAnalyst.Items.Add(new ListViewItem(new string[] {  dr.GetDateTime(0).ToString("yyyy-MM-dd"),  dr.GetInt32(2).ToString(), dr.GetInt32(1).ToString(), }));
          
                }
                dr.Dispose();
            }
            catch(Exception ex)
            {
                Console.WriteLine(ex.Message);
            }
        }
    }
}
