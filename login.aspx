<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="Login" %>

<%@ Register TagPrefix="uc" TagName="KKISHeader" Src="header.ascx" %>
<%@ Register TagPrefix="uc" TagName="KKISFooter" Src="footer.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="KKIS.css" rel="stylesheet" type="text/css" />
    <title>Krystal Kleer Ice Scupltures - Administration: Login</title>
</head>
<body>
    <div class="KKIS">
        <uc:KKISHeader runat="server"></uc:KKISHeader>
        <form id="FormLogin" runat="server">
        <asp:Login ID="LoginBox" runat="server" DestinationPageUrl="~/Admin.aspx" DisplayRememberMe="False"
            CssClass="LoginBox" onauthenticate="LoginBox_Authenticate">
        </asp:Login>
        </form>
    </div>
    <uc:KKISFooter runat="server"></uc:KKISFooter>
</body>
</html>
