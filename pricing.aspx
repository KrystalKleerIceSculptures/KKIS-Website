<%@ Page Language="C#" AutoEventWireup="true" CodeFile="pricing.aspx.cs" Inherits="Pricing" %>

<%@ Register TagPrefix="uc" TagName="KKISHeader" Src="header.ascx" %>
<%@ Register TagPrefix="uc" TagName="KKISSidebar" Src="sidebar.ascx" %>
<%@ Register TagPrefix="uc" TagName="KKISFooter" Src="footer.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="KKIS.css" rel="stylesheet" type="text/css" />
    <title>Ice Sculpture Pricing</title>
</head>
<body>
    <div class="KKIS">
        <uc:KKISHeader runat="server"></uc:KKISHeader>
        <div class="Content">
            <uc:KKISSidebar runat="server"></uc:KKISSidebar>
            <div id="PageContent">
                <div id="PageTitle">
                    Sizes & Pricing Guidelines</div>
                <table width="100%" border="0" cellpadding="2" cellspacing="0">
                    <tr style="background-color: #000033">
                        <td>
                            Masterpiece
                        </td>
                        <td>
                            (variable)
                        </td>
                        <td>
                            $595 & up
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Large
                        </td>
                        <td>
                            (approx. 3½' tall)
                        </td>
                        <td>
                            $395 & up
                        </td>
                    </tr>
                    <tr style="background-color: #000033">
                        <td>
                            Medium
                        </td>
                        <td>
                            (approx. 2½' tall)
                        </td>
                        <td>
                            $325 & up
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Small
                        </td>
                        <td>
                            (approx. 2' tall)
                        </td>
                        <td>
                            $250 & up
                        </td>
                    </tr>
                    <tr style="background-color: #000033">
                        <td>
                            Mini Centerpieces
                        </td>
                        <td>
                            (1' tall)
                        </td>
                        <td>
                            $25 & up
                        </td>
                    </tr>
                </table>
                <div class="Indented">
                    <h3>
                        Delivery Information</h3>
                    <ul>
                        <li>All "Full- Service" sculptures include delivery, setup, lighting and drip tray(s).</li>
                        <li>We service the entire Fox Valley and beyond, Green Bay through Appleton.</li>
                        <li>Delivery charges may apply based on location.</li>
                        <li>Cash and Carry option available.</li>
                    </ul>
                    <h3>
                        <b>Special Effects Available!</b>
                    </h3>
                    Let us customize your carving with special effects such as:
                    <ul>
                        <li>Etched & Sealed Lettering ( add your names, a greeting, or Logo)</li>
                        <li>Internal lighting or Flowers, etc. We welcome your ideas!</li>
                    </ul>
                </div>
            </div>
            <div id="EndContent">
            </div>
        </div>
    </div>
    <uc:KKISFooter runat="server"></uc:KKISFooter>
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

</body>
</html>
