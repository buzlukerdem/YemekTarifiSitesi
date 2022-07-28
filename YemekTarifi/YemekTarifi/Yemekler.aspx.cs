using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Yemekler : System.Web.UI.Page
{
    sqlConnection bgl = new sqlConnection();
    string islem = "";
    string id = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            islem = Request.QueryString["islem"];
            id = Request.QueryString["YemekID"];
        }

        SqlCommand komut = new SqlCommand("SELECT * FROM Tbl_Yemekler", bgl.baglanti());
        SqlDataReader dr = komut.ExecuteReader();
        DataList1.DataSource = dr;
        DataList1.DataBind();

        if (islem == "sil")
        {
            SqlCommand komutsil = new SqlCommand("DELETE FROM Tbl_Yemekler WHERE YemekID=@s1", bgl.baglanti());
            komutsil.Parameters.AddWithValue("@s1", Convert.ToInt32(id));
            komutsil.ExecuteNonQuery();
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

       

        Panel2.Visible = false;
        Panel4.Visible = false;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Panel2.Visible = true;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Panel2.Visible = false;
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        Panel4.Visible = true;
    }

    protected void Button6_Click(object sender, EventArgs e)
    {
        Panel4.Visible = false;
    }

    protected void Button7_Click(object sender, EventArgs e)
    {
        // yemek ekleme
        SqlCommand komutekle = new SqlCommand("INSERT INTO Tbl_Yemekler (YemekAd, YemekMalzeme, YemekTarif, KategoriID) values (@y1,@y2,@y3,@y4)", bgl.baglanti());
        komutekle.Parameters.AddWithValue("@y1",txtyemekad.Text);
        komutekle.Parameters.AddWithValue("@y2", txtmalzeme.Text);
        komutekle.Parameters.AddWithValue("@y3", txttarif.Text);
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