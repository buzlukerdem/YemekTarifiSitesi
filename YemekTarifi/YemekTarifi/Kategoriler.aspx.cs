using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Kategoriler : System.Web.UI.Page
{
    sqlConnection bgl = new sqlConnection();

    string id = "";
    string islem = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        // her seferinde id degeri sıfırlanmaması için
        if(Page.IsPostBack == false)
        {
            islem = Request.QueryString["islem"];
            id = Request.QueryString["KategoriID"];
        }
        SqlCommand komut = new SqlCommand("SELECT * FROM Tbl_Kategoriler", bgl.baglanti());
        SqlDataReader dr = komut.ExecuteReader();
        DataList1.DataSource = dr;
        DataList1.DataBind();

        if(islem == "sil")
        {
            SqlCommand komutsil = new SqlCommand("DELETE FROM Tbl_Kategoriler WHERE KategoriID=@s1", bgl.baglanti());
            komutsil.Parameters.AddWithValue("@s1",Convert.ToInt32(id));
            komutsil.ExecuteNonQuery();
            bgl.baglanti().Close();
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

    protected void btnekle_Click(object sender, EventArgs e)
    {
        SqlCommand komutekle = new SqlCommand("INSERT INTO Tbl_Kategoriler (KategoriAd) values (@p1)", bgl.baglanti());
        komutekle.Parameters.AddWithValue("@p1",txtkategoriad.Text);
        komutekle.ExecuteNonQuery();
        bgl.baglanti().Close();
       
    }
}