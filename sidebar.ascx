<%@ Control Language="C#" AutoEventWireup="true" CodeFile="sidebar.ascx.cs" Inherits="Sidebar" %>
<link href="KKIS.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="lightbox.css" media="screen" />

<script src="js/prototype.js" type="text/javascript"></script>

<script src="js/scriptaculous.js?load=effects" type="text/javascript"></script>

<script src="js/lightbox.js" type="text/javascript"></script>

<div class="Sidebar">
    <div class="BlueBox">
        <a href="Gallery.aspx">Photo Gallery</a>
    </div>
    <div class="SidebarContent">
        <asp:Repeater ID="PreviewImage" runat="server">
            <ItemTemplate>
                <a href="IceSculptures\<%# DataBinder.Eval(Container, "DataItem.ImgPath")%>" rel="lightbox[holiday]"
                    title="<%# DataBinder.Eval(Container, "DataItem.Title")%>">
                    <img class="SidebarImage" alt="<%# DataBinder.Eval(Container, "DataItem.Title")%>"
                        src="IceSculptures/<%# DataBinder.Eval(Container, "DataItem.ImgPath")%>" />
                </a>
            </ItemTemplate>
        </asp:Repeater>
        <a href="Gallery.aspx">Click here to see more!</a>
    </div>
    <div class="BlueBox">
        <a href="Contact.aspx">Contact Us</a>
    </div>
    <div class="SidebarContent">
        Krystal Kleer Ice Sculptures<br />
        2190 S. Carleton Ave.<br />
        Appleton, WI 54915<br />
        Phone: (920) 954-9191<br />
        Fax: (920) 968-2929<br />
        <a href="mailto:krystalkleericesculptures@yahoo.com">Click Here to Email Us</a></div>
</div>
