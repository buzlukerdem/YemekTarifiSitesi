using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class YemekDuzenle : System.Web.UI.Page
{
    sqlConnection bgl = new sqlConnection();
    string id = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["YemekID"];
        if (Page.IsPostBack == false)
        {
            SqlCommand komut = new SqlCommand("SELECT * FROM Tbl_Yemekler WHERE YemekID=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", Convert.ToInt32(id));
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                txtYemekAd.Text = dr[1].ToString();
                txtMalzeme.Text = dr[2].ToString();
                txtTarif.Text = dr[3].ToString();

            }
            bgl.baglanti().Close();
        }

        if (Page.IsPostBack == false)
        {
            // DROPDOWNLIST KATEGORI
            SqlCommand komut2 = new SqlCommand("SELECT * FROM Tbl_Kategoriler", bgl.baglanti());
            SqlDataReader dr2 = komut2.ExecuteReader();
            DropDownList1.DataTextField = "KategoriAd";
            DropDownList1.DataValueField = "KategoriID";
            DropDownList1.DataSource = dr2;
            DropDownList1.DataBind();

        }
    }

    protected void btnguncelle_Click(object sender, EventArgs e)
    {
        SqlCommand komutg = new SqlCommand("UPDATE Tbl_Yemekler set YemekAd=@p1, YemekMalzeme=@p2, YemekTarif=@p3, KategoriID=@p4 WHERE YemekID=@p5", bgl.baglanti());
        komutg.Parameters.AddWithValue("@p1", txtYemekAd.Text);
        komutg.Parameters.AddWithValue("@p2", txtMalzeme.Text);
        komutg.Parameters.AddWithValue("@p3", txtTarif.Text);
        komutg.Parameters.AddWithValue("@p4", DropDownList1.SelectedValue);
        komutg.Parameters.AddWithValue("@p5", Convert.ToInt32(id));
        komutg.ExecuteNonQuery();
        bgl.baglanti().Close();
    }
}