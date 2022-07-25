using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
public class sqlConnection
{
    public SqlConnection baglanti()
    {
        SqlConnection baglan = new SqlConnection(@"Data Source=DESKTOP-HJL1ER0;Initial Catalog=DB_YemekTarifi;Integrated Security=True");
        baglan.Open();
        return baglan;
    }
}