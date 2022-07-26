using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class TarifOner : System.Web.UI.Page
{
    sqlConnection bgl = new sqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnYukle_Click(object sender, EventArgs e)
    {
        SqlCommand komutyukle = new SqlCommand("INSERT INTO Tbl_Tarifler (TarifAd, TarifMalzeme, TarifYapilis, TarifResim, TarifSahip, TarifSahipMail) values(@t1, @t2, @t3, @t4, @t5, @t6)", bgl.baglanti());
        komutyukle.Parameters.AddWithValue("@t1", txtTarifAd.Text);
        komutyukle.Parameters.AddWithValue("@t2", txtMalzemeler.Text);
        komutyukle.Parameters.AddWithValue("@t3", txtYapilis.Text);
        komutyukle.Parameters.AddWithValue("@t4", FileUpload1.FileName);
        komutyukle.Parameters.AddWithValue("@t5", txtTarifOneren.Text);
        komutyukle.Parameters.AddWithValue("@t6", txtMailAdres.Text);
        komutyukle.ExecuteNonQuery();
        bgl.baglanti().Close();
        Response.Write("EKLEME İŞLEMİ BAŞARILI.");
    }
}