using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class TarifDetay : System.Web.UI.Page
{
    sqlConnection bgl = new sqlConnection();
    string id = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Request.QueryString["TarifID"];

        if (Page.IsPostBack==false)
        {
            SqlCommand komut = new SqlCommand("SELECT * FROM Tbl_Tarifler WHERE TarifID=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", Convert.ToInt32(id));
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                txtad.Text = dr[1].ToString();
                txtmalzeme.Text = dr[2].ToString();
                txtyapilis.Text = dr[3].ToString();
                txtoneren.Text = dr[5].ToString();
                txtmail.Text = dr[6].ToString();
            }
            bgl.baglanti().Close();

            // DROPDOWNLIST KATEGORI
            SqlCommand komut2 = new SqlCommand("SELECT * FROM Tbl_Kategoriler", bgl.baglanti());
            SqlDataReader dr2 = komut2.ExecuteReader();
            DropDownList1.DataTextField = "KategoriAd";
            DropDownList1.DataValueField = "KategoriID";
            DropDownList1.DataSource = dr2;
            DropDownList1.DataBind();
        }
    }

    protected void btnonayla_Click(object sender, EventArgs e)
    {
        // durum update
        SqlCommand komutguncelle = new SqlCommand("UPDATE Tbl_Tarifler set TarifDurum=1 WHERE TarifID=@p1", bgl.baglanti());
        komutguncelle.Parameters.AddWithValue("@p1", Convert.ToInt32(id));
        komutguncelle.ExecuteNonQuery();
        bgl.baglanti().Close();

        // yemegi anasayfaya ekleme
        SqlCommand komutekle = new SqlCommand("INSERT INTO Tbl_Yemekler (YemekAd, YemekMalzeme, YemekTarif, KategoriID) values (@y1,@y2,@y3,@y4)", bgl.baglanti());
        komutekle.Parameters.AddWithValue("@y1", txtad.Text);
        komutekle.Parameters.AddWithValue("@y2", txtmalzeme.Text);
        komutekle.Parameters.AddWithValue("@y3", txtyapilis.Text);
        komutekle.Parameters.AddWithValue("@y4", DropDownList1.SelectedValue);
        komutekle.ExecuteNonQuery();
        bgl.baglanti().Close();

        // Kategori Arttırma
        SqlCommand komutarttir = new SqlCommand("UPDATE Tbl_Kategoriler SET KategoriAdet = KategoriAdet + 1 WHERE KategoriID=@p1", bgl.baglanti());
        komutarttir.Parameters.AddWithValue("@p1", DropDownList1.SelectedValue);
        komutarttir.ExecuteNonQuery();
        bgl.baglanti().Close();

    }
}