using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Yorumlar : System.Web.UI.Page
{
    sqlConnection bgl = new sqlConnection();

    string id = "";
    string islem = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack == false)
        {
            islem = Request.QueryString["islem"];
            id = Request.QueryString["YorumID"];
        }

        SqlCommand komut = new SqlCommand("SELECT * FROM Tbl_Yorumlar WHERE YorumOnay = 1",bgl.baglanti());
        SqlDataReader dr = komut.ExecuteReader();
        DataList1.DataSource = dr;
        DataList1.DataBind();

        SqlCommand komut2 = new SqlCommand("SELECT * FROM Tbl_Yorumlar WHERE YorumOnay = 0", bgl.baglanti());
        SqlDataReader dr2 = komut2.ExecuteReader();
        DataList2.DataSource = dr2;
        DataList2.DataBind();

        Panel2.Visible = false;
        Panel4.Visible = false;

        if (islem == "sil")
        {
            SqlCommand komutsil = new SqlCommand("DELETE FROM Tbl_Yorumlar WHERE YorumID=@y1", bgl.baglanti());
            komutsil.Parameters.AddWithValue("@y1", Convert.ToInt32(id));
            komutsil.ExecuteNonQuery();
            bgl.baglanti().Close();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Panel2.Visible = true;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Panel2.Visible = false;
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        Panel4.Visible = true;
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        Panel4.Visible = false;
    }
}