<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><!-- InstanceBegin template="/Templates/kkistemplate.dwt.asp" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- InstanceBeginEditable name="doctitle" -->
<title>Krystal Kleer Ice Sculptures Sizes and Pricing - Ice Carvings for Weddings, Events, Holidays in the Fox Valley and Beyond</title>
<meta name="Description" content="Size and Pricing information for Krystal Kleer Ice Sculptures, a small business in Appleton, WI, serving the greater Fox Valley with hand carved ice sculptures for weddings, banquets, events and other fuctions." />
<meta name="Keywords" content="krystal kleer, crystal clear, kkis, krystal kleer ice sculptures, crystal clear ice sculptures, ice, sculpture, carving, ice sculpture, ice carving, planning, idea, wedding, banquet, event, decoration, event decoration, business, centerpiece, appleton, green bay, fox valley, wisconsin, business, wedding planning, event planning, functional ideas, decorations for weddings, decorations for events, size, price, cost, deliver, cash and carry" />
<!-- InstanceEndEditable -->
<!-- InstanceBeginEditable name="head" --><!-- InstanceEndEditable -->
<link href="styles.css" rel="stylesheet" type="text/css" />
</head>
<body>
<table width="750" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#000000">
  <tr>
    <td rowspan="3" valign="bottom"><img src="images/lborder.jpg" width="30" height="725" border="0" /></td>
    <td rowspan="2"><img src="images/logoright.gif" alt="Krystal Kleer Ice Sculptures" width="75" height="102" /></td>
    <td width="600" height="75" class="Title">Krystal Kleer Ice Sculptures, LLC</td>
    <td rowspan="2"><img src="images/logoleft.gif" alt="Krystal Kleer Ice Sculptures" width="75" height="102" /></td>
    <td rowspan="3" valign="bottom"><img src="images/rborder.jpg" width="30" height="725" /></td>
  </tr>
  <tr>
    <td height="25" class="Subtitle">&quot;Imagine the Possibilities&quot;</td>
  </tr>
  <tr>
    <td colspan="3" valign="top">
    
    <table width="100%" cellpadding="5" cellspacing="1">
        <tr>
          <td colspan="2" align="center" valign="top" bgcolor="#000033" class="Menu"><a href="index.asp">Home</a> | <a href="photo.asp">Photo Gallery</a> | <a href="pricing.asp">Sizes &amp; Pricing</a> | <a href="questions.asp">Questions</a> | <a href="about.asp">About Us</a> | <a href="contact.asp">Contact Us</a></td>
        </tr>
        <tr>
          <td width="194" valign="top" bgcolor="#000033"><table width="100%" cellpadding="5" bgcolor="#003366">
              <tr>
                <td align="left" bgcolor="#000033" class="MenuTitle"><a href="photo.asp?ID=6">Photo Gallery</a></td>
              </tr>
              <tr>
                <td align="center" class="SubMenu"><%
Dim sDSNDir, dsn_name, connectstr
Dim oConn, qry, oRs
Dim dbTable, tableID, tableTitle, tableCategory, tablePath
Dim C, ID

dbTable = "Image"
tableID = "ID"
tableTitle = "Title"
tableCategory = "Category"
tablePath = "Path"

sDSNDir = Server.MapPath("_dsn")
dsn_name = "access_kkis.dsn"
connectstr = "filedsn=" & sDSNDir & "/" & dsn_name

Set oConn = Server.CreateObject("ADODB.Connection")
oConn.Open connectstr

randomize
i = int(rnd * 92) + 1
qry = "SELECT * FROM " & dbTable & " WHERE " & tableID & " = " & i
Set oRS = oConn.Execute(qry)
if not oRS.EOF then
response.write("<a href=photo.asp?C=" & oRs.Fields(tableCategory) & "&ID=" & oRs.Fields(tableID) & ">" & "<img src=icecarvings/" & oRs.Fields(tablePath) & " width=180 border=0 hspace=1 vspace=1 /><br />Click Here to See More</a>")
end if

oRS.close

Set oRs = nothing
Set oConn = nothing
%></td>
              </tr>
            </table>
            <table width="100%" cellpadding="5" bgcolor="#003366">
              <tr>
                <td align="left" bgcolor="#000033" class="MenuTitle"><a href="contact.asp">Contact Us</a></td>
              </tr>
              <tr>
                <td align="left" class="SubMenu"><p>Krystal Kleer Ice Sculptures<br />
                    2190 S. Carleton Ave.<br />
                    Appleton, WI 54915</p>
                    <p>Phone: (920) 954-9191<br />
                      Fax: (920) 968-2929</p>
                  <p><a href="mailto:krystalkleericesculptures@yahoo.com">Click Here to Email Us</a></p></td>
              </tr>
            </table></td>
          <td width="529" valign="top" class="Content"><!-- InstanceBeginEditable name="Content" -->
                  <table width="100%" cellspacing="4" cellpadding="4">
                    <tr>
                      <td align="center" class="Header">SIZES & PRICING GUIDELINES</td>
                    </tr>
                    <tr>
                      <td>&nbsp;</td>
                    </tr>
                    <tr>
                      <td>
                        <table width="100%" cellspacing="4" cellpadding="4">
                          <tr>
                            <td align="left" bgcolor="#000033" class="Menu">Masterpiece - (variable)</td>
                            <td width="100" align="right" bgcolor="#000033" class="Menu">$595 &amp; up</td>
                          </tr>
                          <tr>
                            <td align="left" class="Menu">Large - (approx. 3&frac12;' tall)</td>
                            <td width="100" align="right" class="Menu">$350 &amp; up</td>
                          </tr>
                          <tr>
                            <td align="left" bgcolor="#000033" class="Menu">Medium - (approx. 2&frac12;' tall)</td>
                            <td width="100" align="right" bgcolor="#000033" class="Menu">$295 &amp; up</td>
                          </tr>
                          <tr>
                            <td align="left" class="Menu">Small - (approx. 2' tall)</td>
                            <td width="100" align="right" class="Menu">$225 &amp; up</td>
                          </tr>
                          <tr>
                            <td align="left" bgcolor="#000033" class="Menu">Mini Centerpieces - (1' tall)</td>
                            <td width="100" align="right" bgcolor="#000033" class="Menu">$25 &amp; up</td>
                          </tr>
                        </table>                      </td>
                    </tr>
                    <tr>
                      <td>&nbsp;</td>
                    </tr>
                    <tr>
                      <td align="left" class="Menu">All &quot;Full- Service&quot; sculptures include delivery<font color="#66CCFF">*</font>, setup, lighting and drip tray(s).</td>
                    </tr>
                    <tr>
                      <td align="left" class="Menu">
                      <font color="#66CCFF">* Delivery information: We service the entire Fox Valley and beyond, Green Bay through Appleton. Delivery charges may be apply based on location.</font>                      </td>
                    </tr>
                      <tr>
                      <td align="left" class="Menu">
                      <font color="#66CCFF">* Cash and Carry option available.</font>                      </td>
                    </tr>
                    <tr>
                      <td align="left" class="Menu">
                      <font color="#FF9900">
                      <p>Special Effects Available!</p>
                        <ul>
                          <li>Let us customize your carving with special effects such as:</li>
                          <li>Etched &amp; Sealed Lettering ( add your names, a greeting, or Logo)</li>
                          <li>Internal lighting or Flowers, etc.</li>
                        </ul>
                      <p>We welcome your ideas!</p>
                      </font>                      </td>
                    </tr>
            </table>
                  <!-- InstanceEndEditable --></td>
        </tr>
        </table>
    
    </td>
  </tr>
  <tr>
    <td height="50" colspan="5" align="center" valign="bottom" bgcolor="#000033" class="Footer">© Copyright 2008, Krystal Kleer Ice Sculptures, LLC. All Rights Reserved.</td>
  </tr>
</table>
<script src="http://www.google-analytics.com/urchin.js" type="text/javascript">
</script>
<script type="text/javascript">
_uacct = "UA-2229142-2";
urchinTracker();
</script>
</body>
<!-- InstanceEnd --></html>
