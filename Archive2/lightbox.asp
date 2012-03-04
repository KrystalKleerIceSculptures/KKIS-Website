<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml2/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>KKIS Photo Gallery</title>
<link href="photo.css" rel="stylesheet" type="text/css" />
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
<link href="kkis.css" rel="stylesheet" type="text/css" />
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
<ul class="photoMenu">
	<li><a class="category" href="lightbox.asp?C=Wedding&ID=45#">Wedding Favorites</a></li>
	<li><a class="category" href="lightbox.asp?C=Business&ID=45#">Corporate Events</a></li>
	<li><a class="category" href="lightbox.asp?C=Functional&ID=45#">Functional Ideas</a></li>
	<li><a class="category" href="lightbox.asp?C=Holiday&ID=45#">Holiday Carvings</a></li>
	<li><a class="category" href="lightbox.asp?C=Centerpiece&ID=45#">Mini Centerpieces</a></li>
	<li><a class="category" href="lightbox.asp?C=Unique&ID=45#">Unique Creations</a></li>
</ul>
<ul class="photoGallery">
<%
Set oConn = Server.CreateObject("ADODB.Connection")
oConn.Open connectstr

qry = "SELECT * FROM Image WHERE Category = '" & C & "' ORDER BY Title"
Set oRS = oConn.Execute(qry)

while not oRS.EOF
response.write("<li><a href=""#""><img src=""icecarvings/thumbs/" & oRs.Fields("Path") & """ alt=""" & oRs.Fields("Title") & """ title=""" & oRs.Fields("Title") & """ /><img src=""icecarvings/" & oRs.Fields("Path") & """ alt=""" & oRs.Fields("Title") & """ title=""" & oRs.Fields("Title") & """ class=""large"" /></a></li>")
oRS.movenext
wend

oRS.close

Set oRs = nothing
Set oConn = nothing
%>
</ul>
<br class="clear" />
<div id="footer"><p>© Copyright 2008, Krystal Kleer Ice Sculptures, LLC. All Rights Reserved.</p>
<!-- end #footer --></div>
<!-- end #container --></div>
</body>
</html>