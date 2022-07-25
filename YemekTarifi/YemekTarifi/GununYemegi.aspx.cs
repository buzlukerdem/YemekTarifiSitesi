using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class GununYemegi : System.Web.UI.Page
{
    sqlConnection bgl = new sqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        SqlCommand komut = new SqlCommand("SELECT * FROM Tbl_GY", bgl.baglanti());
        SqlDataReader dr = komut.ExecuteReader();
        DataList3.DataSource = dr;
        DataList3.DataBind();
    }
}