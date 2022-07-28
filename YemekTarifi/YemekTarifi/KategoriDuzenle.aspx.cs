using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class KategoriAdminDetay : System.Web.UI.Page
{
    sqlConnection bgl = new sqlConnection();
    string id = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["KategoriID"];
        if (Page.IsPostBack == false)
        {
            SqlCommand komut = new SqlCommand("SELECT * FROM Tbl_Kategoriler WHERE KategoriID=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", Convert.ToInt32(id));
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                txtkategoriad.Text = dr[1].ToString();
                txtadet.Text = dr[2].ToString();
            }
            bgl.baglanti().Close();
        }

    }

    protected void btnguncelle_Click(object sender, EventArgs e)
    {
        SqlCommand komutg = new SqlCommand("UPDATE Tbl_Kategoriler set KategoriAd=@p1, KategoriAdet=@p2  WHERE KategoriID=@p3",bgl.baglanti());
        komutg.Parameters.AddWithValue("@p1",txtkategoriad.Text);
        komutg.Parameters.AddWithValue("@p2", txtadet.Text);
        komutg.Parameters.AddWithValue("@p3", Convert.ToInt32(id));
        komutg.ExecuteNonQuery();
        bgl.baglanti().Close();

    }
}