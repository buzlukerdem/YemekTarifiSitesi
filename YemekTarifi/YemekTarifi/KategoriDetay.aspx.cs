using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class KategoriDetay : System.Web.UI.Page
{
    sqlConnection bgl = new sqlConnection();
    string kategoriid = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        kategoriid = Request.QueryString["KategoriID"];
        SqlCommand komut = new SqlCommand("SELECT * FROM Tbl_Yemekler WHERE KategoriID = @p1",bgl.baglanti());
        komut.Parameters.AddWithValue("@p1",Convert.ToInt32(kategoriid));
        SqlDataReader dr = komut.ExecuteReader();
        DataList2.DataSource = dr;
        DataList2.DataBind();
    }
}