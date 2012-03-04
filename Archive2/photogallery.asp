<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><!-- InstanceBegin template="/Templates/kkistemplate.dwt.asp" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- InstanceBeginEditable name="doctitle" -->
<title>Krystal Kleer Ice Sculptures - Ice Carvings for Weddings, Events, Holidays in the Fox Valley and Beyond</title>
<meta name="Description" content="Krystal Kleer Ice Sculptures is a small business in Appleton, WI, serving the greater Fox Valley with hand carved ice sculptures for weddings, banquets, events and other fuctions." />
<meta name="Keywords" content="krystal kleer, crystal clear, kkis, krystal kleer ice sculptures, crystal clear ice sculptures, ice, sculpture, carving, ice sculpture, ice carving, planning, idea, wedding, banquet, event, decoration, event decoration, business, centerpiece, appleton, green bay, fox valley, wisconsin, business, wedding planning, event planning, functional ideas, decorations for weddings, decorations for events" />
<!-- InstanceEndEditable -->
<!-- InstanceBeginEditable name="head" -->
<!-- InstanceEndEditable -->
<link href="styles.css" rel="stylesheet" type="text/css" />
</head>
<body>
<table width="750" border="0" align="center" cellpadding="1" cellspacing="0" bgcolor="#000000">
<tr>
<td width="75" rowspan="2">
<img src="images/logoright.gif" alt="Krystal Kleer Ice Sculptures" width="75" height="102" />
</td>
<td width="600" height="75" class="Title">Krystal Kleer Ice Sculptures, LLC</td>
<td width="75" rowspan="2">
<img src="images/logoleft.gif" alt="Krystal Kleer Ice Sculptures" width="75" height="102" />
</td>
</tr>
<tr><td height="25" class="Subtitle">&quot;Imagine the Possibilities&quot;</td></tr>
<tr><td colspan="5" align="center">
<table width="100%" cellpadding="5" cellspacing="1">
<tr><td colspan="2" align="center" valign="top" bgcolor="#000033" class="Menu">
<a href="index.asp">Home</a> | 
<a href="pricing.asp">Sizes &amp; Pricing</a> | 
<a href="questions.asp">FAQs</a> | 
<a href="about.asp">About Us</a> | 
<a href="contact.asp">Contact Us</a>
</td></tr>
<tr><td width="194" valign="top" bgcolor="#000033">
<table width="100%" cellpadding="5" bgcolor="#003366">
<tr><td align="left" class="MenuTitle"><a href="photo.asp?ID=6">Photo Gallery</a></td></tr>
<tr><td align="left" class="Menu">
<%
Dim sDSNDir, dsn_name, connectstr
Dim oConn, qry, oRs
Dim dbTable, tableID, tableTitle, tableCategory
Dim C, ID

dbTable = "Image"
tableID = "ID"
tableTitle = "Title"
tableCategory = "Category"
C = Trim(Request("C"))
ID = Trim(Request("ID"))

sDSNDir = Server.MapPath("_dsn")
dsn_name = "access_kkis.dsn"
connectstr = "filedsn=" & sDSNDir & "/" & dsn_name

Set oConn = Server.CreateObject("ADODB.Connection")
oConn.Open connectstr

if C = "" then
C = "null"
end if

qry = "SELECT * FROM " & dbTable & " WHERE " & tableCategory & " = " & C
Set oRS = oConn.Execute(qry)

response.Write("<a href=""photo.asp?C=Wedding&ID=6"">Wedding Favorites</a><br />")

if C = "Wedding" then
response.Write("<span class=""SubMenu"">")
else
while not oRS.EOF
if oRs.Fields(tableID) = ID then
response.Write("<span class=""SubMenuBold"">")
response.write("-<a href=photo.asp?C=Wedding&ID=" & oRs.Fields(tableID) & ">" & oRs.Fields(tableTitle) & "</a><br />")
response.Write("</span>")
else
response.write("-<a href=photo.asp?C=Wedding&ID=" & oRs.Fields(tableID) & ">" & oRs.Fields(tableTitle) & "</a><br />")
end if
oRS.movenext
wend
response.Write("</span>")
end if

response.Write("<a href=""photo.asp?C=Business&ID=67"">Corporate Events</a><br />")

if C = "Business" then
response.Write("<span class=""SubMenu"">")
while not oRS.EOF
response.write("-<a href=photo.asp?C=Business&ID=" & oRs.Fields(tableID) & ">" & oRs.Fields(tableTitle) & "</a><br />")
oRS.movenext
wend
response.Write("</span>")
end if

response.Write("<a href=""photo.asp?C=Functional&ID=38"">Functional Ideas</a><br />")

if C = "Functional" then
response.Write("<span class=""SubMenu"">")
while not oRS.EOF
response.write("-<a href=photo.asp?C=Functional&ID=" & oRs.Fields(tableID) & ">" & oRs.Fields(tableTitle) & "</a><br />")
oRS.movenext
wend
response.Write("</span>")
end if

response.Write("<a href=""photo.asp?C=Holiday&ID=54"">Holiday Carvings</a><br />")

if C = "Holiday" then
response.Write("<span class=""SubMenu"">")
while not oRS.EOF
response.write("-<a href=photo.asp?C=Holiday&ID=" & oRs.Fields(tableID) & ">" & oRs.Fields(tableTitle) & "</a><br />")
oRS.movenext
wend
response.Write("</span>")
end if

response.Write("<a href=""photo.asp?C=Centerpiece&ID=3"">Mini Centerpieces</a><br />")

if C = "Centerpiece" then
response.Write("<span class=""SubMenu"">")
while not oRS.EOF
response.write("-<a href=photo.asp?C=Centerpiece&ID=" & oRs.Fields(tableID) & ">" & oRs.Fields(tableTitle) & "</a><br />")
oRS.movenext
wend
response.Write("</span>")
end if

response.Write("<a href=""photo.asp?C=Unique&ID=53"">Unique Creations</a><br />")

if C = "Unique" then
response.Write("<span class=""SubMenu"">")
while not oRS.EOF
response.write("-<a href=photo.asp?C=Unique&ID=" & oRs.Fields(tableID) & ">" & oRs.Fields(tableTitle) & "</a><br />")
oRS.movenext
wend
response.Write("</span>")
end if

oRS.close

Set oRs = nothing
Set oConn = nothing
%>
</td></tr></table>
</td>
<td width="529" valign="top" class="Content">
<!-- InstanceBeginEditable name="Content" -->
      <table width="100%">
        <tr>
          <td class="Header">Photo Gallery</td>
        </tr>
        <tr>
          <td>Content</td>
        </tr>
      </table>
      <!-- InstanceEndEditable -->
</td>
</tr></table></td></tr>
<tr><td colspan="3" class="FootContent">Appleton, WI (920) 954-9191</td></tr>
<tr><td colspan="3" class="Footer">Website designed by <a href="mailto:Brandon.J.Salmon@Gmail.com">Brandon J. Salmon</a></td></tr>
</table>
<script src="http://www.google-analytics.com/urchin.js" type="text/javascript">
</script>
<script type="text/javascript">
_uacct = "UA-2229142-2";
urchinTracker();
</script>
</body>
<!-- InstanceEnd --></html>