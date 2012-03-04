<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Krystal Kleer Ice Sculptures, LLC</title>
<link href="kkis.css" rel="stylesheet" type="text/css" />
<link href="gallery.css" rel="stylesheet" type="text/css" />
<link href="slide_show.css" rel="stylesheet" type="text/css" />
<!--[if IE 5]>
<style type="text/css"> 
/* place css box model fixes for IE 5* in this conditional comment */
.kkis #sidebar1 { width: 230px; }
</style>
<![endif]--><!--[if IE]>
<style type="text/css"> 
/* place css fixes for all versions of IE in this conditional comment */
.kkis #sidebar1 { padding-top: 30px; }
.kkis #mainContent { zoom: 1; }
/* the above proprietary zoom property gives IE the hasLayout it needs to avoid several bugs */
</style>
<![endif]-->
<%
Dim C, ID
Dim sDSNDir, dsn_name, connectstr
Dim oConn, qry, oRs

C = "Wedding"
C = Trim(Request("C"))
ID = 6
ID = Trim(Request("ID"))

sDSNDir = Server.MapPath("_dsn")
dsn_name = "access_kkis.dsn"
connectstr = "filedsn=" & sDSNDir & "/" & dsn_name
%>
</head>
<body class="kkis">
<div id="container">
<div id="logoleft"><img src="images/logoright.gif" alt="KKIS" />
<!-- end #logoleft --></div>
<div id="logoright"><img src="images/logoleft.gif" alt="KKIS" />
<!-- end #logoright --></div>
<div id="title"><h1>Krystal Kleer Ice Sculptures, LLC</h1>
<!-- end #header --></div>
<div id="subtitle">&quot;Imagine the Possibilities&quot;
<!-- end #header --></div>
<div id="menu">Home | Photo Gallery | Sizes &amp; Pricing | Questions | About Us | Contact Us
<!-- end #menu --></div>
<div id="submenu"><b>Wedding Favorites</b> | Corporate Events | Functional Ideas | Holiday Carvings | Mini Centerpieces | Unique Creations
<!-- end #menu --></div>
<ul class="gallery">
<%
Set oConn = Server.CreateObject("ADODB.Connection")
oConn.Open connectstr

qry = "SELECT * FROM Image WHERE Category = '" & C & "' ORDER BY Title"
Set oRS = oConn.Execute(qry)

while not oRS.EOF
response.write("<li><a href=""#""><img src=""icecarvings/" & oRs.Fields("Path") & """ alt=""" & oRs.Fields("Title") & """ title=""" & oRs.Fields("Title") & """ /><img src=""icecarvings/" & oRs.Fields("Path") & """ alt=""" & oRs.Fields("Title") & """ title=""" & oRs.Fields("Title") & """ class=""preview"" /></a></li>")
oRS.movenext
wend

oRS.close

Set oRs = nothing
Set oConn = nothing
%>
</ul>
<div id="footer"><p>© Copyright 2008, Krystal Kleer Ice Sculptures, LLC. All Rights Reserved.</p>
<!-- end #footer --></div>
<!-- end #container --></div>
</body>
</html>