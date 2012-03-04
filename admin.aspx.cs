using System;
//using System.Collections;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
//using System.Linq;
//using System.Web;
//using System.Web.Security;
//using System.Web.UI;
//using System.Web.UI.HtmlControls;
//using System.Web.UI.WebControls;
//using System.Web.UI.WebControls.WebParts;
//using System.Xml.Linq;

public partial class Admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string sPage = Page.Request.Params["Edit"] == null ? "" : Page.Request.Params["Edit"].ToString();

            if (sPage == "IceSculptures")
            {
                lstCategories.Visible = true;
                lstIceSculptures.Visible = true;
                lstPricing.Visible = false;
                lstQuestions.Visible = false;

                PopulateCategories();
                FilterIceSculptures(-1);
            }
            else if (sPage == "Categories")
            {
                lstCategories.Visible = true;
                lstIceSculptures.Visible = false;
                lstPricing.Visible = false;
                lstQuestions.Visible = false;

                PopulateCategories();
            }
            else if (sPage == "Pricing")
            {
                lstCategories.Visible = false;
                lstIceSculptures.Visible = false;
                lstPricing.Visible = true;
                lstQuestions.Visible = false;
            }
            else if (sPage == "Questions")
            {
                lstCategories.Visible = false;
                lstIceSculptures.Visible = false;
                lstPricing.Visible = false;
                lstQuestions.Visible = true;
            }
            else
            {
                lstCategories.Visible = false;
                lstIceSculptures.Visible = false;
                lstPricing.Visible = false;
                lstQuestions.Visible = false;
            }
        }
        else
        {
            pnlEditItem.Visible = false;
        }
    }

    protected void lstCategories_SelectedIndexChanged(object sender, EventArgs e)
    {
        string sPage = Page.Request.Params["Edit"] == null ? "" : Page.Request.Params["Edit"].ToString();

        if (sPage == "IceSculptures")
        {
            FilterIceSculptures(Convert.ToInt32(lstCategories.SelectedValue));
        }
    }

    protected void lstIceSculptures_SelectedIndexChanged(object sender, EventArgs e)
    {
        LoadIceSculpture(Convert.ToInt32(lstIceSculptures.SelectedValue));
    }

    protected void PopulateCategories()
    {
        DataSet sqlDataSet = new DataSet("KKISData");
        SqlDataAdapter sqlAdapter = new SqlDataAdapter("SELECT * FROM Categories", ConfigurationManager.ConnectionStrings["KKISConnection"].ConnectionString);
        sqlAdapter.Fill(sqlDataSet, "Categories");

        lstCategories.DataSource = sqlDataSet.Tables["Categories"];
        lstCategories.DataTextField = "Category";
        lstCategories.DataValueField = "ID";
        lstCategories.DataBind();
    }

    protected void FilterIceSculptures(int CategoryID)
    {
        string sSQLCommand = "SELECT * FROM IceSculptures ";        
        if (CategoryID != -1)
            sSQLCommand += "WHERE CategoryID = " + CategoryID;
        sSQLCommand += " ORDER BY Title";

        DataSet sqlDataSet = new DataSet("KKISData");
        SqlDataAdapter sqlAdapter = new SqlDataAdapter(sSQLCommand, ConfigurationManager.ConnectionStrings["KKISConnection"].ConnectionString);
        sqlAdapter.Fill(sqlDataSet, "IceSculptures");

        lstIceSculptures.DataSource = sqlDataSet.Tables["IceSculptures"];
        lstIceSculptures.DataTextField = "Title";
        lstIceSculptures.DataValueField = "ID";
        lstIceSculptures.DataBind();
    }

    protected void LoadIceSculpture(int IceSculptureID)
    {
        pnlEditItem.Visible = true;

        SqlConnection sqlConn = new SqlConnection(ConfigurationManager.ConnectionStrings["KKISConnection"].ConnectionString);
        SqlCommand sqlCmd = new SqlCommand("SELECT * FROM IceSculptures WHERE ID = " + IceSculptureID, sqlConn);
        sqlConn.Open();

        SqlDataReader sqlReader = sqlCmd.ExecuteReader();
        sqlReader.Read();

        txtTitle.Text = sqlReader["Title"].ToString();
        imgFullSizeImage.ImageUrl = @"IceSculptures\" + sqlReader["ImgPath"].ToString();
        imgThumbnailImage.ImageUrl = @"IceSculptures\Thumbs\" + sqlReader["ImgPath"].ToString();

        DataSet sqlDataSet = new DataSet("KKISData");
        SqlDataAdapter sqlAdapter = new SqlDataAdapter("SELECT * FROM Categories", ConfigurationManager.ConnectionStrings["KKISConnection"].ConnectionString);
        sqlAdapter.Fill(sqlDataSet, "Categories");

        ddlCategory.DataSource = sqlDataSet.Tables["Categories"];
        ddlCategory.DataTextField = "Category";
        ddlCategory.DataValueField = "ID";
        ddlCategory.DataBind();

        if (sqlReader["CategoryID"].ToString() != "0")
            ddlCategory.SelectedValue = sqlReader["CategoryID"].ToString();
    }

    protected void btnSave_Click(object sender, EventArgs e)
    {
        SqlConnection sqlConn = new SqlConnection(ConfigurationManager.ConnectionStrings["KKISConnection"].ConnectionString);
        SqlCommand sqlCmd = new SqlCommand(
            "UPDATE IceSculptures SET Title = '" + txtTitle.Text + "', " +
            "CategoryID = " + ddlCategory.SelectedValue + " " +
            "WHERE ID = " + lstIceSculptures.SelectedValue, sqlConn);
        sqlConn.Open();

        sqlCmd.ExecuteNonQuery();
    }
}
