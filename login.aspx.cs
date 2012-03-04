using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class Login : System.Web.UI.Page
{
    protected void LoginBox_Authenticate(object sender, AuthenticateEventArgs e)
    {
        if (FormsAuthentication.Authenticate(LoginBox.UserName, LoginBox.Password))
            FormsAuthentication.RedirectFromLoginPage(LoginBox.UserName, true);
    }
}
