using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Iletisim : System.Web.UI.Page
{

    sqlConnection bgl = new sqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand komut = new SqlCommand("INSERT INTO Tbl_Mesajlar (MesajSahip, MesajBaslik, MesajMail, MesajIcerik) values(@m1, @m2, @m3, @m4)", bgl.baglanti());
        komut.Parameters.AddWithValue("@m1",txtadsoyad.Text);
        komut.Parameters.AddWithValue("@m2", txtbaslik.Text);
        komut.Parameters.AddWithValue("@m3", txtmailadres.Text);
        komut.Parameters.AddWithValue("@m4", txtmesajicerik.Text);
        komut.ExecuteNonQuery();
        bgl.baglanti().Close();
        Response.Write("Mesaj gönderildi.");

    }
}