<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="Admin" %>

<%@ Register TagPrefix="uc" TagName="KKISHeader" Src="header.ascx" %>
<%@ Register TagPrefix="uc" TagName="KKISFooter" Src="footer.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="KKIS.css" rel="stylesheet" type="text/css" />
    <title>Krystal Kleer Ice Sculptures - Administration</title>
</head>
<body>
    <form id="frmAdmin" runat="server">
    <div class="KKIS">
        <uc:KKISHeader runat="server"></uc:KKISHeader>
        <div class="Content">
            <asp:LoginName ID="LoginName" runat="server" CssClass="LoginState" />
            <asp:LoginStatus ID="LoginStatus" runat="server" CssClass="LoginState" LogoutAction="Redirect"
                LogoutPageUrl="~/Home.aspx" />
            <div class="BlueBox">
                <a href="Admin.aspx">Control Panel:</a>
                <br />
                <a href="Admin.aspx?Edit=IceSculptures">Ice Sculptures</a> | <a href="Admin.aspx?Edit=Categories">
                    Categories</a> | <a href="Admin.aspx?Edit=Pricing">Pricing</a> | <a href="Admin.aspx?Edit=Questions">
                        Questions</a>
                <div id="SelectionMenu">
                    <asp:ListBox ID="lstCategories" runat="server" AutoPostBack="True" Rows="10" OnSelectedIndexChanged="lstCategories_SelectedIndexChanged"
                        Width="35%"></asp:ListBox>
                    <asp:ListBox ID="lstIceSculptures" runat="server" AutoPostBack="True" Rows="10" OnSelectedIndexChanged="lstIceSculptures_SelectedIndexChanged"
                        Width="64%"></asp:ListBox>
                    <asp:ListBox ID="lstPricing" runat="server" AutoPostBack="True" Rows="6" Width="35%">
                    </asp:ListBox>
                    <asp:ListBox ID="lstQuestions" runat="server" AutoPostBack="True" Rows="6" Width="100%">
                    </asp:ListBox>
                </div>
            </div>
            <asp:Panel ID="pnlEditItem" CssClass="EditItem" runat="server" Visible="False">
                <div class="BlueBox">
                    <asp:Label ID="lblEditItem" runat="server" Text="Edit Ice Sculpture" Width="400px"></asp:Label></div>
                <div id="EditImage">
                    <asp:Image ID="imgThumbnailImage" runat="server" Width="100px" Height="100px" /><br />
                    <asp:Label ID="lblThumbnailImage" runat="server" Text="Thumbnail Image"></asp:Label>
                </div>
                <div class="EditField">
                    <asp:Label ID="lblTitle" runat="server" Text="Title "></asp:Label>
                    <asp:TextBox ID="txtTitle" runat="server" Width="250px"></asp:TextBox>
                </div>
                <div class="EditField">
                    <asp:Label ID="lblCategory" runat="server" Text="Category "></asp:Label>
                    <asp:DropDownList ID="ddlCategory" runat="server" Width="250px">
                    </asp:DropDownList>
                </div>
                <div class="EditField">
                    <asp:Label ID="lblImage" runat="server" Text="Upload New Image "></asp:Label>
                    <asp:FileUpload ID="fileImage" runat="server" Width="250px" />
                </div>
                <div id="FullSizeImage">
                    <asp:Image ID="imgFullSizeImage" runat="server" /><br />
                </div>
                <div class="BlueBox">
                    <asp:Button ID="btnSave" runat="server" Text="Save" onclick="btnSave_Click" 
                        PostBackUrl="~/Admin.aspx" />
                    &nbsp;<asp:Button ID="btnCancel" runat="server" Text="Cancel" 
                        PostBackUrl="~/Admin.aspx" />
                </div>
            </asp:Panel>
            <div id="EndContent">
            </div>
        </div>
    </div>
    <uc:KKISFooter ID="Footer" runat="server"></uc:KKISFooter>
    </form>
</body>
</html>
