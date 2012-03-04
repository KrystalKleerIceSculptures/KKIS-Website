using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Sidebar : UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
    //    SqlConnection oConnection = new SqlConnection(ConfigurationManager.ConnectionStrings["KKISConnection"].ConnectionString);
    //    oConnection.Open();
    //    SqlCommand oCommand = new SqlCommand("SELECT TOP 1 * FROM IceSculptures ORDER BY NEWID()", oConnection);
    //    SqlDataReader oReader = oCommand.ExecuteReader();
    //    oReader.Read();

    //    PreviewImage.ImageUrl = "IceSculptures/" + oReader["ImgPath"];
    //    PreviewImage.ToolTip = oReader["Title"].ToString();
    //    PreviewImageLink.NavigateUrl = "gallery.aspx?C=" + oReader["CategoryID"].ToString() + "&ID=" + oReader["ID"].ToString();




        string sCommand = "SELECT TOP 1 * FROM IceSculptures ORDER BY NEWID()";

        DataSet oData = new DataSet("KKISData");
        SqlDataAdapter oAdapter = new SqlDataAdapter(sCommand, ConfigurationManager.ConnectionStrings["KKISConnection"].ConnectionString);
        oAdapter.Fill(oData);

        PreviewImage.DataSource = oData.Tables[0];
        PreviewImage.DataBind();
    }
}
