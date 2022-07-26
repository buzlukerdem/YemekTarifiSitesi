using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class YemekDetay : System.Web.UI.Page
{
    sqlConnection bgl = new sqlConnection();
    string yemekid = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        yemekid = Request.QueryString["YemekID"];

        SqlCommand komut = new SqlCommand("SELECT YemekAd FROM Tbl_Yemekler WHERE YemekID=@p1", bgl.baglanti());
        komut.Parameters.AddWithValue("@p1", Convert.ToInt32(yemekid));
        SqlDataReader dr = komut.ExecuteReader();
        while (dr.Read())
        {
            Label4.Text = dr[0].ToString();
        }
        bgl.baglanti().Close();

        // Yorumları getirme...

        SqlCommand komutgetir = new SqlCommand("SELECT * FROM Tbl_Yorumlar WHERE YemekID=@y1", bgl.baglanti());
        komutgetir.Parameters.AddWithValue("@y1", Convert.ToInt32(yemekid));
        SqlDataReader dr2 = komutgetir.ExecuteReader();
        DataList2.DataSource = dr2;
        DataList2.DataBind();

    }

    protected void btnYorum_Click(object sender, EventArgs e)
    {
        SqlCommand komutyorum = new SqlCommand("INSERT INTO Tbl_Yorumlar (YorumAdSoyad, YorumMail, YorumIcerik, YemekID) values (@g1, @g2, @g3, @g4)", bgl.baglanti());
        komutyorum.Parameters.AddWithValue("@g1",txtAdSoyad.Text);
        komutyorum.Parameters.AddWithValue("@g2", txtMail.Text);
        komutyorum.Parameters.AddWithValue("@g3", txtYorum.Text);
        komutyorum.Parameters.AddWithValue("@g4", yemekid);
        komutyorum.ExecuteNonQuery();
        bgl.baglanti().Close();
    }
}