using System;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace cafeNLP
{

    public partial class Mainpage : Form
    {
        OrderInfo orderI;
        public Mainpage()
        {
            InitializeComponent();
        }
        public void reloadListItem(string id)
        {
            SqlCommand comOrder = new SqlCommand("select f.nameFood, f.priceFood, t.SL, f.codeFood from TempOrder as t join Food as f on t.idSP = f.codeFood where t.idTable = @id", ConDB.con);
            comOrder.Parameters.AddWithValue("@id", id);
            // show list order
            listOrder.Items.Clear();
            try
            {
                SqlDataReader dr = comOrder.ExecuteReader();
                int index = 1;
                int totalOrder = 0;
                while (dr.Read())
                {
                    listOrder.Items.Add(new ListViewItem(new string[] { index.ToString(), dr.GetInt32(3).ToString(), dr.GetString(0), dr.GetInt32(1).ToString(), dr.GetInt32(2).ToString(), (dr.GetInt32(1) * dr.GetInt32(2)).ToString() }));
                    totalOrder += dr.GetInt32(1) * dr.GetInt32(2);
                    index += 1;
                }
                dr.Dispose();
                btnTotalOrder.Text = "Tổng thanh toán: " + totalOrder;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, " Thông Báo");
            }
        }
        public void setOrder(string id)
        {
            this.orderI = new OrderInfo();
            this.orderI.idTable = id;
            cbbCatelory.Enabled = true;
            cbbFood.Enabled = false;
            setColor(id);
            reloadListItem(id);
        }

        public void setColor(string id)
        {
            btnTable1.BackColor = id == "1" ? System.Drawing.Color.SeaGreen : System.Drawing.Color.LightGray;
            btnTable2.BackColor = id == "2" ? System.Drawing.Color.SeaGreen : System.Drawing.Color.LightGray;
            btnTable3.BackColor = id == "3" ? System.Drawing.Color.SeaGreen : System.Drawing.Color.LightGray;
            btnTable4.BackColor = id == "4" ? System.Drawing.Color.SeaGreen : System.Drawing.Color.LightGray;
            btnTable5.BackColor = id == "5" ? System.Drawing.Color.SeaGreen : System.Drawing.Color.LightGray;
            btnTable6.BackColor = id == "6" ? System.Drawing.Color.SeaGreen : System.Drawing.Color.LightGray;
            btnTable7.BackColor = id == "7" ? System.Drawing.Color.SeaGreen : System.Drawing.Color.LightGray;
            btnTable8.BackColor = id == "8" ? System.Drawing.Color.SeaGreen : System.Drawing.Color.LightGray;
            btnTable9.BackColor = id == "9" ? System.Drawing.Color.SeaGreen : System.Drawing.Color.LightGray;
            btnTable10.BackColor = id == "10" ? System.Drawing.Color.SeaGreen : System.Drawing.Color.LightGray;
            btnTable11.BackColor = id == "11" ? System.Drawing.Color.SeaGreen : System.Drawing.Color.LightGray;
            btnTable12.BackColor = id == "12" ? System.Drawing.Color.SeaGreen : System.Drawing.Color.LightGray;
            btnTable13.BackColor = id == "13" ? System.Drawing.Color.SeaGreen : System.Drawing.Color.LightGray;
            btnTable14.BackColor = id == "14" ? System.Drawing.Color.SeaGreen : System.Drawing.Color.LightGray;
            btnTable15.BackColor = id == "15" ? System.Drawing.Color.SeaGreen : System.Drawing.Color.LightGray;
            btnTable16.BackColor = id == "16" ? System.Drawing.Color.SeaGreen : System.Drawing.Color.LightGray;
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
            btnAddFood.Enabled = false;
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
            cbbFood.SelectedIndex = -1;
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

                    cbbFood.Items.Add(new SelectBox { Text = dr1.GetString(1), Value = dr1.GetInt32(0).ToString() });

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

            if (cbbFood.SelectedText != null)
            {
                btnAddFood.Enabled = true;
            }
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
            if (cbbFood.SelectedIndex == -1)
            {
                MessageBox.Show("Vui lòng chọn đồ uống", "Thông báo");
                return;
            }
            SelectBox selectedFood = cbbFood.Items[cbbFood.SelectedIndex] as SelectBox;
            int qty = Int32.Parse(btnQty.Value.ToString());

            // get price of food
            SqlCommand com2 = new SqlCommand("Select * from Food where codeFood = @id", ConDB.con);
            com2.Parameters.AddWithValue("@id", selectedFood.Value);
            int priceFood = 0;
            try
            {
                SqlDataReader drFood = com2.ExecuteReader();

                if (!drFood.Read())
                {
                    throw new Exception("Error fetch price of this food");
                }

                priceFood = drFood.GetInt32(2);

                drFood.Dispose();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Thông báo");
                return;
            }


            try
            {
                //get if exist food in tempOrder
                SqlCommand com3 = new SqlCommand("Select count(*) from TempOrder where idTable = @idTable and idSP = @idSP", ConDB.con);
                com3.Parameters.AddWithValue("@idSP", selectedFood.Value);
                com3.Parameters.AddWithValue("@idTable", this.orderI.idTable);
                Int32 count = (Int32)com3.ExecuteScalar();

                if (count == 0)
                {
                    //add food into temporder
                    SqlCommand com = new SqlCommand("insert into temporder (idtable, idsp, sl) values (@idtable, @idsp, @qty)", ConDB.con);
                    com.Parameters.AddWithValue("@idtable", this.orderI.idTable);
                    com.Parameters.AddWithValue("@idsp", selectedFood.Value);
                    com.Parameters.AddWithValue("@qty", qty);
                    try
                    {

                        SqlDataReader dr = com.ExecuteReader();

                        listOrder.Items.Add(new ListViewItem(new string[] { (listOrder.Items.Count + 1).ToString(), selectedFood.Value.ToString(), selectedFood.Text, priceFood.ToString(), qty.ToString(), (priceFood * qty).ToString() }));
                        int totalPrice = Int32.Parse(btnTotalOrder.Text.Replace("Tổng thanh toán: ", ""));
                 
                        btnTotalOrder.Text = "Tổng thanh toán: " + ((priceFood * qty) + totalPrice).ToString();
                        dr.Dispose();

                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show(ex.Message, "thông báo");
                    }

                }
                else
                {
                    //add food into temporder
                    SqlCommand comUp = new SqlCommand("update temporder set  sl = @qty where idtable = @idtable and idsp = @idsp", ConDB.con);
                    comUp.Parameters.AddWithValue("@idtable", this.orderI.idTable);
                    comUp.Parameters.AddWithValue("@idsp", selectedFood.Value);
                    comUp.Parameters.AddWithValue("@qty", qty);
                    try
                    {

                        SqlDataReader dr2 = comUp.ExecuteReader();
                        dr2.Dispose();

                        reloadListItem(this.orderI.idTable);

                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show(ex.Message, "thông báo");
                    }
                }
                btnQty.Value = 1;

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Thông báo");
                return;
            }



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

        private void btnCheckOut_Click(object sender, EventArgs e)
        {

            if (this.orderI == null)
            {
                MessageBox.Show("Vui lòng chọn bàn cần thanh toán", "Thông báo");
                return;
            }
            if (listOrder.Items.Count == 0)
            {
                MessageBox.Show("Vui lòng đặt món trước khi thanh toán", "Thông báo");
                return;
            }
            // get ID Order
            int idTable = Int32.Parse(this.orderI.idTable);
            SqlCommand newOrder = new SqlCommand("Insert into [Order](date, idTable) output inserted.idOrder values (@date, @idTable)", ConDB.con);
            newOrder.Parameters.AddWithValue("@date", DateTime.UtcNow.Date.ToString("yyyy/MM/dd"));
            newOrder.Parameters.AddWithValue("@idTable", idTable);
            int idOrder = 0;
            try
            {
                idOrder = Int32.Parse(newOrder.ExecuteScalar().ToString());
                newOrder.Dispose();
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }

            // get id table
            SqlCommand comUp = new SqlCommand("select * from temporder where idtable = @idtable", ConDB.con);
            comUp.Parameters.AddWithValue("@idtable", idTable);
            try
            {
                string sql = "Insert into DetailOrder(idOrder, idSP, SL) values";
                SqlDataReader dr = comUp.ExecuteReader();


                while (dr.Read())
                {
                    sql += "(" + idOrder + "," + dr.GetInt32(1) + "," + dr.GetInt32(2) + "),";

                }

                dr.Dispose();
                sql = sql.Remove(sql.Length - 1);
                SqlCommand insertDetail = new SqlCommand(sql, ConDB.con);
                insertDetail.ExecuteNonQuery();
                insertDetail.Dispose();

                //delele all item  in tempOrder
                SqlCommand com = new SqlCommand("delete from TempOrder where idTable = @idTable", ConDB.con);
                com.Parameters.AddWithValue("@idTable", idTable);
                com.ExecuteNonQuery();
                com.Dispose();
                listOrder.Items.Clear();
                int totalPrice = Int32.Parse(btnTotalOrder.Text.Replace("Tổng thanh toán: ", ""));
                btnTotalOrder.Text = "Tổng thanh toán: 0";
                MessageBox.Show("Thanh toán thàn công đơn hàng bàn " + idTable + "\nTổng tiền: " + totalPrice, "Thông báo");
            }

            catch (Exception ex)
            {
                Console.WriteLine(ex.Message);
            }


        }

      
        private void listOrder_KeyDown(object sender, KeyEventArgs e)
        {
            if (Keys.Delete == e.KeyCode)
            {
                foreach (ListViewItem listViewItem in ((ListView)sender).SelectedItems)
                {
                    ListViewItem item = listOrder.SelectedItems[0];
                    SqlCommand deleteItem = new SqlCommand("delete from temporder where idTable = @id and idSP = @idSP ", ConDB.con);
                    deleteItem.Parameters.AddWithValue("@id", this.orderI.idTable);
                    deleteItem.Parameters.AddWithValue("@idSP", listViewItem.SubItems[1].Text);
                    int price = Int32.Parse(item.SubItems[5].Text);
                    int totalPrice = Int32.Parse(btnTotalOrder.Text.Replace("Tổng thanh toán: ", ""));
                    btnTotalOrder.Text = "Tổng thanh toán: " + (totalPrice - price).ToString();
                    try
                    {
                        deleteItem.ExecuteNonQuery();
                        listViewItem.Remove();
                    }catch(SqlException ex)
                    {
                        Console.WriteLine(ex.Message);
                    }
                 
                }
            }
        }
    }
}
