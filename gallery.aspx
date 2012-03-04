<%@ Page Language="C#" AutoEventWireup="true" CodeFile="gallery.aspx.cs" Inherits="Gallery" %>

<%@ Register TagPrefix="uc" TagName="KKISHeader" Src="header.ascx" %>
<%@ Register TagPrefix="uc" TagName="KKISFooter" Src="footer.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <title>Green Bay Ice Sculptures Wedding Centerpiece Event Holiday IdeasBar </title>
<meta name="description" content=" Kleer Ice Sculptures located in Green Bay offers ice sculptures, ice bars, centerpiece ideas for weddings, events, holidays and more!"/>
<meta name="keywords" content="Wedding Ice Sculpture, Wedding Ice Centerpiece, Ice Sculpture for Wedding, Holiday Ice Sculpture, Event Ice Sculpture, Green Bay Ice Sculpture, Green Bay Wedding Sculpture, Green Bay Event Sculpture, Green Bay Holiday Sculpture, Ice Sculpture Wedding, Wedding Sculpture Ideas, Green Bay Ice Sculpture Ideas, Holiday Ice Sculpture Ideas, Event Ice Sculpture Ideas, Ice Sculpture Centerpiece"/>
<meta name="author" content="MSH"/>
<meta name="robots" content="all"/>
<meta name="revisit-after" content="14 days"/>
<meta name="googlebot" content="index,follow"/>
    <link rel="stylesheet" type="text/css" href="KKIS.css" />
    <link rel="stylesheet" type="text/css" href="lightbox.css" media="screen" />

    <script src="js/prototype.js" type="text/javascript"></script>

    <script src="js/scriptaculous.js?load=effects" type="text/javascript"></script>

    <script src="js/lightbox.js" type="text/javascript"></script>

</head>
<body>
    <form id="FormGallery" runat="server">
    <div class="KKIS">
        <uc:KKISHeader runat="server"></uc:KKISHeader>
        <div class="PhotoGallery">
            <div class="SubMenu">
                <asp:Repeater ID="ImageCategories" runat="server">
                    <ItemTemplate>
                        <a href="Gallery.aspx?C=<%# DataBinder.Eval(Container, "DataItem.ID")%>">
                            <%# DataBinder.Eval(Container, "DataItem.Category")%>
                        </a>|
                    </ItemTemplate>
                </asp:Repeater>
            </div>
            <div id="PageTitle">
                <asp:Label ID="lblTitle" runat="server" Text="Photo Gallery"></asp:Label>
            </div>
            <asp:Repeater ID="ImageGallery" runat="server">
                <ItemTemplate>
                    <a href="IceSculptures\<%# DataBinder.Eval(Container, "DataItem.ImgPath")%>" rel="lightbox[gallery]"
                        title="<%# DataBinder.Eval(Container, "DataItem.Title")%>">
                        <img alt="<%# DataBinder.Eval(Container, "DataItem.Title")%>" src="IceSculptures/Thumbs/<%# DataBinder.Eval(Container, "DataItem.ImgPath")%>" />
                    </a>
                </ItemTemplate>
            </asp:Repeater>
            <div id="EndContent">
            </div>
        </div>
    </div>
    <uc:KKISFooter runat="server"></uc:KKISFooter>
    </form>
    <script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-20270705-1']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>
<p align=center/><br/><span style="font-size:8.0pt;font-family:'Arial'"/>
<a href="Gallery.aspx?C=1">Wedding Ice Sculpture</a> | 
<a href="Gallery.aspx?C=1">Wedding Ice Centerpiece</a> | 
<a href="Gallery.aspx?C=1">Ice Sculpture for Wedding</a>| 
<a href="Gallery.aspx?C=4">Holiday Ice Sculpture</a> | 
<a href="Gallery.aspx?C=2">Event Ice Sculpture</a> | 
<a href="Gallery.aspx?C=3">Green Bay Ice Sculpture</a> | 
<a href="Gallery.aspx?C=1">Green Bay Wedding Sculpture</a> | 
<a href="Gallery.aspx?C=2">Green Bay Event Sculpture</a> | 
<a href="Gallery.aspx?C=4">Green Bay Holiday Sculpture</a> | 
<a href="Gallery.aspx?C=1">Ice Sculpture for Wedding</a> | 
<a href="Gallery.aspx?C=1">Wedding Sculpture Ideas</a> | 
<a href="Gallery.aspx?C=3">Green Bay Ice Sculpture Ideas</a> | 
<a href="Gallery.aspx?C=4">Holiday Ice Sculpture Ideas</a> | 
<a href="Gallery.aspx?C=2">Event Ice Sculpture Ideas</a> | 
<a href="Gallery.aspx?C=1">Ice Sculpture Centerpiece
</a>

</body>
</html>
