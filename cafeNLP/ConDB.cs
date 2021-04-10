using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace cafeNLP
{

   

    public class ConDB 
    {
        public static SqlConnection con;

        public void Connection()
        {
            try
            {
                SqlConnection con = new SqlConnection("Server=localhost;Database=CAFE;Integrated Security=SSPI");
                con.Open();
                ConDB.con = con;
            }
            catch(SqlException ex){
            MessageBox.Show(ex.Message, " Thông Báo");
            }
        }

        
    }
}
