<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml2/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title> Stu Nicholls | CSSplay | Cross browser multi page photo gallery mark 3</title>
<meta name="Author" content="Stu Nicholls" />
<style type="text/css">
/* ================================================================ 
This copyright notice must be untouched at all times.

The original version of this stylesheet and the associated (x)html
is available at http://www.cssplay.co.uk/menu/lightbox3.html
Copyright (c) 2005-2007 Stu Nicholls. All rights reserved.
This stylesheet and the associated (x)html may be modified in any 
way to fit your requirements.
=================================================================== */
/* common styling */

a {
	color:#FFFFFF;
}
a:hover {text-decoration:none;}
a:visited {
	color:#FFFFFF;
}

/* slides styling */

.photo {width:720px; height:600px; background:url(lbox/back.jpg) no-repeat center center; text-align:left; position:relative;}

.photo dl {font-size:0.9em; position:absolute; width:400px; top:100px; left:100px;}
.photo dl dt {font-family:"times new roman", serif;font-size:1.8em; margin-bottom:2em;}
.photo dl dd {font-family:verdana, arial, sans-serif;  padding:0; margin:0; line-height:1.7em; margin-bottom:2em; font-size:11px;}
.photo dl dd:first-letter {font-weight:bold;}
.photo ul.topic {padding:0; margin:0; list-style:none; width:720px; height:auto; position:relative; z-index:10;}

.photo ul.topic li {display:block; width:240px; height:31px; float:left;}
.photo ul.topic li a.set {display:block; font-size:11px; width:239px; height:30px; text-align:center; line-height:30px; color:#000; text-decoration:none; border:1px solid #fff; border-width:1px 1px 0 0; background:#ccc; font-family:verdana, arial, sans-serif;}

.photo ul.topic li a ul, 
.photo ul.topic li ul 
{display:none;}

.photo ul.topic li a:hover,
.photo ul.topic li:hover a
{color:#fff; background:#aaa;}

.photo ul.topic li a:hover ul, 
.photo ul.topic li:hover ul 
{display:block; position:absolute; left:0; top:31px; list-style:none; padding:0; margin:0; height:375px; background:#ddd url(lbox/close.gif) no-repeat right top; width:479px; padding:70px 100px; border:20px solid #aaa;}

.photo ul.topic li a:hover ul li, 
.photo ul.topic li:hover ul li 
{display:inline; width:112px; height:87px; float:left; border:1px solid #fff; margin:1px;}

.photo ul.topic li a:hover ul li a, 
.photo ul.topic li:hover ul li a 
{display:block; width:110px; height:85px; cursor:default; float:left; text-decoration:none; background:#444; border:1px solid #888;}

.photo ul.topic li a:hover ul li a img, 
.photo ul.topic li:hover ul li a img 
{display:block; width:100px; height:75px; border:5px solid #eee;}

.photo ul.topic li a:hover ul li a img.large, 
.photo ul.topic li:hover ul li a img.large 
{position:absolute; display:block; width:0; height:0; overflow:hidden; border:0;}

.photo ul.topic li a:hover ul li a:hover, 
.photo ul.topic li:hover ul li a:hover 
{white-space:normal; position:relative;}

.photo ul.topic li a:hover ul li a:hover img, 
.photo ul.topic li:hover ul li a:hover img 
{position:absolute; left:-50px; top:-32px; width:200px; height:150px; border-color:#fff;}

.photo ul.topic li a:hover ul li a:hover img.large, 
.photo ul.topic li:hover ul li a:hover img.large 
{position:absolute; display:block; width:0; height:0; overflow:hidden; border:0;}

.photo ul.topic li:hover ul li a:focus, 
.photo ul.topic li:hover ul li a:active,
.photo ul.topic li a:hover ul li a:active 
{position:static; outline:0;}

.photo ul.topic li:hover ul li a:focus img, 
.photo ul.topic li:hover ul li a:active img, 
.photo ul.topic li a:hover ul li a:active img 
{position:absolute; left:200px; top:170px; width:200px; height:150px; padding:0; background:#000; border:0; z-index:5;}

.photo ul.topic li:hover ul li a:focus img.large, 
.photo ul.topic li:hover ul li a:active img.large, 
.photo ul.topic li a:hover ul li a:active img.large 
{position:absolute; left:15px; top:24px; width:640px; height:480px; padding:0; background:#000; border:4px solid #fff; z-index:10;}


body {
	background-color: #000000;
}
</style>
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

<body>
<div class="photo">
<dl>
<dt><b>CSS</b> <i>p</i>lay - Photograph Gallery</dt>

<dd>Hover the mouse over any of the three menu choices above to show a grid of 4x4 thumbnail photographs.</dd>
<dd>Hover the mouse over any of these thumbnails to see a 2x enlarged photograph.</dd>
<dd>Click the mouse on the 2x photograph to see the 640 x 480 pixel full size photograph.<br />NOTE: Opera and Safari users will need to keep the mouse button pressed to see the image.</dd>
<dd>The Latest Opera beta build will act the same as Firefox and the large image will remain on screen after the mouse button is released. It is now just Safari the acts differently.</dd>
<dd>To close the fullsize photograph click on the 'X' which is displayed in the top right corner.</dd>
</dl>
<ul class="topic">
	<li><a class="set" href="#Portraits">Portraits<!--[if gte IE 7]><!--></a><!--<![endif]-->
	<!--[if lte IE 6]><table><tr><td><![endif]-->
		<ul>
<%
Set oConn = Server.CreateObject("ADODB.Connection")
oConn.Open connectstr

qry = "SELECT * FROM Image WHERE Category = '" & C & "' ORDER BY Title"
Set oRS = oConn.Execute(qry)

while not oRS.EOF
response.write("<li><a href=""#""><img src=""icecarvings/" & oRs.Fields("Path") & """ alt=""" & oRs.Fields("Title") & """ title=""" & oRs.Fields("Title") & """ /><img src=""icecarvings/" & oRs.Fields("Path") & """ alt=""" & oRs.Fields("Title") & """ title=""" & oRs.Fields("Title") & """ class=""large"" /></a></li>")
oRS.movenext
wend

oRS.close

Set oRs = nothing
Set oConn = nothing
%>
<li><a href="#portrait1"><img src="lbox/portrait1a.jpg" alt="" title="" /><img class="large" src="lbox/portrait1.jpg" alt="" title="" /></a></li>

<li><a href="#portrait2"><img src="lbox/portrait2a.jpg" alt="" title="" /><img class="large" src="lbox/portrait2.jpg" alt="" title="" /></a></li>
<li><a href="#portrait3"><img src="lbox/portrait3a.jpg" alt="" title="" /><img class="large" src="lbox/portrait3.jpg" alt="" title="" /></a></li>
<li><a href="#portrait4"><img src="lbox/portrait4a.jpg" alt="" title="" /><img class="large" src="lbox/portrait4.jpg" alt="" title="" /></a></li>
<li><a href="#portrait5"><img src="lbox/portrait5a.jpg" alt="" title="" /><img class="large" src="lbox/portrait5.jpg" alt="" title="" /></a></li>
<li><a href="#portrait6"><img src="lbox/portrait6a.jpg" alt="" title="" /><img class="large" src="lbox/portrait6.jpg" alt="" title="" /></a></li>
<li><a href="#portrait7"><img src="lbox/portrait7a.jpg" alt="" title="" /><img class="large" src="lbox/portrait7.jpg" alt="" title="" /></a></li>
<li><a href="#portrait8"><img src="lbox/portrait8a.jpg" alt="" title="" /><img class="large" src="lbox/portrait8.jpg" alt="" title="" /></a></li>
<li><a href="#portrait9"><img src="lbox/portrait9a.jpg" alt="" title="" /><img class="large" src="lbox/portrait9.jpg" alt="" title="" /></a></li>
<li><a href="#portrait10"><img src="lbox/portrait10a.jpg" alt="" title="" /><img class="large" src="lbox/portrait10.jpg" alt="" title="" /></a></li>
<li><a href="#portrait11"><img src="lbox/portrait11a.jpg" alt="" title="" /><img class="large" src="lbox/portrait11.jpg" alt="" title="" /></a></li>
<li><a href="#portrait12"><img src="lbox/portrait12a.jpg" alt="" title="" /><img class="large" src="lbox/portrait12.jpg" alt="" title="" /></a></li>
<li><a href="#portrait13"><img src="lbox/portrait13a.jpg" alt="" title="" /><img class="large" src="lbox/portrait13.jpg" alt="" title="" /></a></li>
<li><a href="#portrait14"><img src="lbox/portrait14a.jpg" alt="" title="" /><img class="large" src="lbox/portrait14.jpg" alt="" title="" /></a></li>
<li><a href="#portrait15"><img src="lbox/portrait15a.jpg" alt="" title="" /><img class="large" src="lbox/portrait15.jpg" alt="" title="" /></a></li>
<li><a href="#portrait16"><img src="lbox/portrait16a.jpg" alt="" title="" /><img class="large" src="lbox/portrait16.jpg" alt="" title="" /></a></li>
		</ul>
	<!--[if lte IE 6]></td></tr></table></a><![endif]-->
	</li>
	<li class="topic"><a class="set" href="#Landscapes">Landscapes<!--[if gte IE 7]><!--></a><!--<![endif]-->
	<!--[if lte IE 6]><table><tr><td><![endif]-->
		<ul>
<li><a href="#landscape1"><img src="lbox/landscape1a.jpg" alt="" title="" /><img class="large" src="lbox/landscape1.jpg" alt="" title="" /></a></li>
<li><a href="#landscape2"><img src="lbox/landscape2a.jpg" alt="" title="" /><img class="large" src="lbox/landscape2.jpg" alt="" title="" /></a></li>
<li><a href="#landscape3"><img src="lbox/landscape3a.jpg" alt="" title="" /><img class="large" src="lbox/landscape3.jpg" alt="" title="" /></a></li>
<li><a href="#landscape4"><img src="lbox/landscape4a.jpg" alt="" title="" /><img class="large" src="lbox/landscape4.jpg" alt="" title="" /></a></li>
<li><a href="#landscape5"><img src="lbox/landscape5a.jpg" alt="" title="" /><img class="large" src="lbox/landscape5.jpg" alt="" title="" /></a></li>
<li><a href="#landscape6"><img src="lbox/landscape6a.jpg" alt="" title="" /><img class="large" src="lbox/landscape6.jpg" alt="" title="" /></a></li>
<li><a href="#landscape7"><img src="lbox/landscape7a.jpg" alt="" title="" /><img class="large" src="lbox/landscape7.jpg" alt="" title="" /></a></li>
<li><a href="#landscape8"><img src="lbox/landscape8a.jpg" alt="" title="" /><img class="large" src="lbox/landscape8.jpg" alt="" title="" /></a></li>
<li><a href="#landscape9"><img src="lbox/landscape9a.jpg" alt="" title="" /><img class="large" src="lbox/landscape9.jpg" alt="" title="" /></a></li>
<li><a href="#landscape10"><img src="lbox/landscape10a.jpg" alt="" title="" /><img class="large" src="lbox/landscape10.jpg" alt="" title="" /></a></li>
<li><a href="#landscape11"><img src="lbox/landscape11a.jpg" alt="" title="" /><img class="large" src="lbox/landscape11.jpg" alt="" title="" /></a></li>
<li><a href="#landscape12"><img src="lbox/landscape12a.jpg" alt="" title="" /><img class="large" src="lbox/landscape12.jpg" alt="" title="" /></a></li>
<li><a href="#landscape13"><img src="lbox/landscape13a.jpg" alt="" title="" /><img class="large" src="lbox/landscape13.jpg" alt="" title="" /></a></li>
<li><a href="#landscape14"><img src="lbox/landscape14a.jpg" alt="" title="" /><img class="large" src="lbox/landscape14.jpg" alt="" title="" /></a></li>
<li><a href="#landscape15"><img src="lbox/landscape15a.jpg" alt="" title="" /><img class="large" src="lbox/landscape15.jpg" alt="" title="" /></a></li>
<li><a href="#landscape16"><img src="lbox/landscape16a.jpg" alt="" title="" /><img class="large" src="lbox/landscape16.jpg" alt="" title="" /></a></li>
		</ul>
	<!--[if lte IE 6]></td></tr></table></a><![endif]-->
	</li>
	<li class="topic"><a class="set" href="#Birds">Birds<!--[if gte IE 7]><!--></a><!--<![endif]-->
	<!--[if lte IE 6]><table><tr><td><![endif]-->
		<ul>
<li><a href="#bird1"><img src="lbox/bird1.jpg" alt="" title="" /><img class="large" src="lbox/bird1a.jpg" alt="" title="" /></a></li>
<li><a href="#bird2"><img src="lbox/bird2.jpg" alt="" title="" /><img class="large" src="lbox/bird2a.jpg" alt="" title="" /></a></li>
<li><a href="#bird3"><img src="lbox/bird3.jpg" alt="" title="" /><img class="large" src="lbox/bird3a.jpg" alt="" title="" /></a></li>
<li><a href="#bird4"><img src="lbox/bird4.jpg" alt="" title="" /><img class="large" src="lbox/bird4a.jpg" alt="" title="" /></a></li>
<li><a href="#bird5"><img src="lbox/bird5.jpg" alt="" title="" /><img class="large" src="lbox/bird5a.jpg" alt="" title="" /></a></li>
<li><a href="#bird6"><img src="lbox/bird6.jpg" alt="" title="" /><img class="large" src="lbox/bird6a.jpg" alt="" title="" /></a></li>
<li><a href="#bird7"><img src="lbox/bird7.jpg" alt="" title="" /><img class="large" src="lbox/bird7a.jpg" alt="" title="" /></a></li>
<li><a href="#bird8"><img src="lbox/bird8.jpg" alt="" title="" /><img class="large" src="lbox/bird8a.jpg" alt="" title="" /></a></li>
<li><a href="#bird9"><img src="lbox/bird9.jpg" alt="" title="" /><img class="large" src="lbox/bird9a.jpg" alt="" title="" /></a></li>
<li><a href="#bird10"><img src="lbox/bird10.jpg" alt="" title="" /><img class="large" src="lbox/bird10a.jpg" alt="" title="" /></a></li>
<li><a href="#bird11"><img src="lbox/bird11.jpg" alt="" title="" /><img class="large" src="lbox/bird11a.jpg" alt="" title="" /></a></li>
<li><a href="#bird12"><img src="lbox/bird12.jpg" alt="" title="" /><img class="large" src="lbox/bird12a.jpg" alt="" title="" /></a></li>
<li><a href="#bird13"><img src="lbox/bird13.jpg" alt="" title="" /><img class="large" src="lbox/bird13a.jpg" alt="" title="" /></a></li>
<li><a href="#bird14"><img src="lbox/bird14.jpg" alt="" title="" /><img class="large" src="lbox/bird14a.jpg" alt="" title="" /></a></li>
<li><a href="#bird15"><img src="lbox/bird15.jpg" alt="" title="" /><img class="large" src="lbox/bird15a.jpg" alt="" title="" /></a></li>
<li><a href="#bird16"><img src="lbox/bird16.jpg" alt="" title="" /><img class="large" src="lbox/bird16a.jpg" alt="" title="" /></a></li>
		</ul>
	<!--[if lte IE 6]></td></tr></table></a><![endif]-->
	</li>
</ul>
<br class="clear" />
</div>
</body>
</html>
