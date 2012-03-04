<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Krystal Kleer Ice Sculptures - Ice Carvings for Weddings, Events, Holidays in the Fox Valley and Beyond</title>
<meta name="Description" content="Krystal Kleer Ice Sculptures is a small business in Appleton, WI, serving the greater Fox Valley with hand carved ice sculptures for weddings, banquets, events and other fuctions." />
<meta name="Keywords" content="krystal kleer, crystal clear, kkis, krystal kleer ice sculptures, crystal clear ice sculptures, ice, sculpture, carving, ice sculpture, ice carving, planning, idea, wedding, banquet, event, decoration, event decoration, business, centerpiece, appleton, green bay, fox valley, wisconsin, business, wedding planning, event planning, functional ideas, decorations for weddings, decorations for events" />
<link href="styles.css" rel="stylesheet" type="text/css" />
</head>
<body>
<%
Dim sDSNDir, dsn_name, connectstr
Dim oConn, qry, oRs
Dim dbTable, tableID, tableTitle, tableCategory, tablePath
Dim C, ID

dbTable = "Image"
tableID = "ID"
tableTitle = "Title"
tableCategory = "Category"
tablePath = "Path"

C = Trim(Request("C"))
if C = "" then
C = "Wedding"
end if

ID = Trim(Request("ID"))
if ID = "" then
ID = 6
end if

sDSNDir = Server.MapPath("_dsn")
dsn_name = "access_kkis.dsn"
connectstr = "filedsn=" & sDSNDir & "/" & dsn_name
%>
<table width="750" border="0" align="center" cellpadding="1" cellspacing="0" bgcolor="#000000">
<tr>
<td width="75" rowspan="2">
<img src="images/logoright.gif" alt="Krystal Kleer Ice Sculptures" width="75" height="102" /></td>
<td width="594" height="75" class="Title">Krystal Kleer Ice Sculptures, LLC</td>
<td width="75" rowspan="2">
<img src="images/logoleft.gif" alt="Krystal Kleer Ice Sculptures" width="75" height="102" /></td>
</tr>
<tr><td height="25" class="Subtitle">&quot;Imagine the Possibilities&quot;</td>
</tr>
<tr><td colspan="5" align="center">
<table width="747" cellpadding="5" cellspacing="1">
<tr>
<td width="733" align="center" valign="top" bgcolor="#000033" class="Menu">
<a href="index.asp">Home</a> | <a href="photo.asp">Photo Gallery</a> | 
<a href="pricing.asp">Sizes &amp; Pricing</a> | 
<a href="questions.asp">Questions</a> | 
<a href="about.asp">About Us</a> | 
<a href="contact.asp">Contact Us</a></td>
</tr>
<tr>
<td valign="top" bgcolor="#000033">
<table width="100%" cellpadding="5" bgcolor="#003366">
<tr><td align="center" class="SubMenu">
<%
response.write("<a href=""photo.asp?C=Wedding&ID=6"">")
if C = "Wedding" then
response.write("<b>Wedding Favorites</b></a> | ")
else
response.write("Wedding Favorites</a> | ")
end if

response.write("<a href=""photo.asp?C=Business&ID=67"">")
if C = "Business" then
response.write("<b>Corporate Events</b></a> | ")
else
response.write("Corporate Events</a> | ")
end if

response.write("<a href=""photo.asp?C=Functional&ID=9"">")
if C = "Functional" then
response.write("<b>Functional Ideas</b></a> | ")
else
response.write("Functional Ideas</a> | ")
end if

response.write("<a href=""photo.asp?C=Holiday&ID=54"">")
if C = "Holiday" then
response.write("<b>Holiday Carvings</b></a> | ")
else
response.write("Holiday Carvings</a> | ")
end if

response.write("<a href=""photo.asp?C=Centerpiece&ID=3"">")
if C = "Centerpiece" then
response.write("<b>Mini Centerpieces</b></a> | ")
else
response.write("Mini Centerpieces</a> | ")
end if

response.write("<a href=""photo.asp?C=Unique&ID=53"">")
if C = "Unique" then
response.write("<b>Unique Creations</b></a> | ")
else
response.write("Unique Creations</a> | ")
end if
%>
</td>
</tr>
</table></td>
</tr>
<tr>
<td width="747" align="center" valign="top" bgcolor="#000033"><span class="Menu"><%
Set oConn = Server.CreateObject("ADODB.Connection")
oConn.Open connectstr

qry = "SELECT * FROM " & dbTable & " WHERE " & tableCategory & " = '" & C & "'"
Set oRS = oConn.Execute(qry)

'response.write("<div align=""center"">")
while not oRS.EOF
response.write("<a href=photo.asp?C=" & oRs.Fields(tableCategory) & "&ID=" & oRs.Fields(tableID) & ">" & "<img src=icecarvings/thumbs/" & oRs.Fields(tablePath) & " height=100 border=0 hspace=1 vspace=1 />" & "</a>")
oRS.movenext
wend
'response.write("</div>")
response.write("<br />")

oRS.close

Set oRs = nothing
Set oConn = nothing
%>

</span>
</td>
</tr>
<tr>
<td align="center" valign="top" ><%
Set oConn = Server.CreateObject("ADODB.Connection")
oConn.Open connectstr

qry = "SELECT * FROM " & dbTable & " WHERE " & tableID & " = " & ID
Set oRS = oConn.Execute(qry)

if not oRs.EOF then
response.Write("<table align=center><tr><td class=Subtitle>""" & oRs.Fields(tableTitle) & """</td></tr><tr><td><img align=center src=icecarvings/" & oRs.Fields(tablePath) & " border=1 /></td></tr></table>")
end if

oRS.close
Set oRs = nothing
Set oConn = nothing
%>    </td>
</tr>
</table></td></tr>
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
</html>