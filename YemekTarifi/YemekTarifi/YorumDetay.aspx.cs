using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class YorumDetay : System.Web.UI.Page
{
    sqlConnection bgl = new sqlConnection();
    string id = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["YorumID"];
        if (Page.IsPostBack == false)
        {
            SqlCommand komut = new SqlCommand("SELECT YorumAdSoyad, YorumMail, YorumIcerik, YemekAd FROM Tbl_Yorumlar INNER JOIN Tbl_Yemekler ON Tbl_Yorumlar.YemekID = Tbl_Yemekler.YemekID WHERE YorumID = @p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", Convert.ToInt32(id));
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                txtadsoyad.Text = dr[0].ToString();
                txtmail.Text = dr[1].ToString();
                txtyorum.Text = dr[2].ToString();
                txtyemek.Text = dr[3].ToString();

            }
            bgl.baglanti().Close();
        }
    }

    protected void btnonayla_Click(object sender, EventArgs e)
    {
        SqlCommand onayla = new SqlCommand("UPDATE Tbl_Yorumlar set YorumOnay=@p1 WHERE YorumID=@p2",bgl.baglanti());
        onayla.Parameters.AddWithValue("@p1","true");
        onayla.Parameters.AddWithValue("@p2", Convert.ToInt32(id));
        onayla.ExecuteNonQuery();
        bgl.baglanti().Close();
    }
}