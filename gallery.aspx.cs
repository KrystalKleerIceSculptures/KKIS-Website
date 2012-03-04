using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

public partial class Gallery : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string sCategory = Page.Request.Params["C"] == null ? "1" : Page.Request.Params["C"].ToString();

        string sCommand = "SELECT * FROM Categories " +
            "SELECT Category FROM Categories WHERE ID = {0} " +
            "SELECT * FROM IceSculptures WHERE CategoryID = {0} ORDER BY Title ";

        DataSet oData = new DataSet("KKISData");
        SqlDataAdapter oAdapter = new SqlDataAdapter(string.Format(sCommand, sCategory), ConfigurationManager.ConnectionStrings["KKISConnection"].ConnectionString);
        oAdapter.Fill(oData);

        ImageCategories.DataSource = oData.Tables[0];
        ImageCategories.DataBind();

        lblTitle.Text = "Photo Gallery - " + oData.Tables[1].Rows[0]["Category"];

        ImageGallery.DataSource = oData.Tables[2];
        ImageGallery.DataBind();
    }
}