<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><!-- InstanceBegin template="/Templates/kkistemplate.dwt.asp" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- InstanceBeginEditable name="doctitle" -->
<title>Krystal Kleer Ice Sculptures Wedding Gallery- Ice Carvings for Weddings, Events, Holidays in the Fox Valley and Beyond</title>
<meta name="Description" content="Wedding Gallery for Krystal Kleer Ice Sculptures, a small business in Appleton, WI, serving the greater Fox Valley with hand carved ice sculptures for weddings, banquets, events and other fuctions." />
<meta name="Keywords" content="krystal kleer, crystal clear, kkis, krystal kleer ice sculptures, crystal clear ice sculptures, ice, sculpture, carving, ice sculpture, ice carving, planning, idea, wedding, banquet, event, decoration, event decoration, business, centerpiece, appleton, green bay, fox valley, wisconsin, business, wedding planning, event planning, functional ideas, decorations for weddings, decorations for events, gallery" />
<!-- InstanceEndEditable -->
<!-- InstanceBeginEditable name="head" --><!-- InstanceEndEditable -->
<!-- InstanceParam name="WeddingMenu" type="boolean" value="true" -->
<!-- InstanceParam name="BusinessMenu" type="boolean" value="true" -->
<!-- InstanceParam name="FunctionalMenu" type="boolean" value="false" -->
<!-- InstanceParam name="HolidayMenu" type="boolean" value="false" -->
<!-- InstanceParam name="CenterpieceMenu" type="boolean" value="false" -->
<!-- InstanceParam name="VasesMenu" type="boolean" value="false" -->
<!-- InstanceParam name="UniqueMenu" type="boolean" value="false" -->
<link href="styles.css" rel="stylesheet" type="text/css" />
</head>
<body>
<table width="750" border="0" align="center" cellpadding="1" cellspacing="0" bgcolor="#000000">
  <tr>
    <td width="75" rowspan="2"><img src="images/logoright.gif" alt="Krystal Kleer Ice Sculptures" width="75" height="102" /></td>
    <td width="600" height="75" align="center" class="Title">Krystal Kleer Ice Sculptures, LLC</td>
    <td width="75" rowspan="2"><img src="images/logoleft.gif" alt="Krystal Kleer Ice Sculptures" width="75" height="102" /></td>
  </tr>
  <tr>
    <td height="25" align="center" class="Subtitle">&quot;Imagine the Possibilities&quot;</td>
  </tr>
  
  
  <tr>
    <td colspan="5" align="center">
	 <table width="100%" cellpadding="5" cellspacing="1">
	   <tr>
	     <td colspan="2" align="center" valign="top" bgcolor="#000033" class="Menu"><a href="index.html">Home</a> | <a href="pricing.html">Sizes &amp; Pricing</a> | <a href="questions.html">FAQs</a> | <a href="about.html">About Us</a> | <a href="contact.html">Contact Us</a></td>
        </tr>
	   <tr>
	     <td width="194" valign="top" bgcolor="#000033">
         <table width="100%" cellpadding="5" bgcolor="#003366">
             <tr>
               <td align="left" bgcolor="#000033" class="MenuTitle">Photo Gallery</td>
             </tr>
             <tr>
               <td align="left" class="SubMenu">
			   <!-- InstanceBeginEditable name="Menu" -->
<%
Dim oConn, oRs
Dim qry, connectstr, sDSNDir
Dim db_name, db_username, db_userpassword
Dim db_server, dsn_name

dsn_name = "access_kkis.dsn"
tablename = "Image"
fieldname = "Title"
fieldcategory = "Wedding"

sDSNDir = Server.MapPath("_dsn")

connectstr = "filedsn=" & sDSNDir & "/" & dsn_name

Set oConn = Server.CreateObject("ADODB.Connection")
oConn.Open connectstr
qry = "SELECT * FROM " & tablename & " WHERE Category = '" & fieldcategory & "'"

Set oRS = oConn.Execute(qry)

if not oRS.EOF then
while not oRS.EOF
response.write "--" & oRs.Fields(fieldname) & "<br />"
oRS.movenext
wend
oRS.close
end if

Set oRs = nothing
Set oConn = nothing
%>
<!-- InstanceEndEditable -->               </td>
             </tr>
             <tr>
               <td align="left" class="SubMenu">



               --<a href="wedding/pages/castle_grande.html">Castle Grande</a><br />
               --<a href="wedding/pages/dancing_bride_and_groom.html">Dancing Bride &amp; Groom</a><br />
               --<a href="wedding/pages/double_hearts_with_roses.html">Double Hearts w/ Roses</a><br />
               --<a href="wedding/pages/eiffel_tower.html">Eiffel Tower</a><br />
               --<a href="wedding/pages/garden_arbor.html">Garden Arbor</a><br />
               --<a href="wedding/pages/graceful_swan.html">Graceful Swan</a><br />
               --<a href="wedding/pages/heart_with_names.html">Heart w/ Names</a><br />
               --<a href="wedding/pages/heart_with_names_on_column.html">Heart w/ Names on Column</a>
               --<a href="wedding/pages/horse_and_carriage.html">Horse and Carriage</a><br />
               --<a href="wedding/pages/kissing_dolphins.html">Kissing Dolphins</a><br />
               --<a href="wedding/pages/kissing_swans.html">Kissing Swans</a></td>
</tr>
<tr>
<td align="left" class="Menu"><a href="business/business.html">Corporate Events</a></td>
</tr>
<tr>
<td align="left" class="SubMenu">

--Business Gallery</td>
             </tr>
             <tr>
               <td align="left" class="Menu"><a href="functional/functional.html">Functional Ideas</a></td>
             </tr>
             <tr>
               <td align="left" class="SubMenu"></td>
             </tr>
             <tr>
               <td align="left" class="Menu"><a href="holiday/holiday.html">Holiday Carvings</a></td>
             </tr>
             <tr>
               <td align="left" class="SubMenu"></td>
             </tr>
             <tr>
               <td align="left" class="Menu"><a href="centerpieces/centerpieces.html">Mini Centerpieces</a></td>
             </tr>
             <tr>
               <td align="left" class="SubMenu"></td>
             </tr>
             <tr>
               <td align="left" class="Menu"><a href="unique.html">Unique Ideas</a></td>
             </tr>
             <tr>
               <td align="left" class="SubMenu"></td>
             </tr>
          </table></td>
	     <td width="529" valign="top" class="Content"><!-- InstanceBeginEditable name="Content" -->
                  <table width="100%" border="0" cellspacing="4" cellpadding="4">
                    <tr>
                      <td colspan="2" align="center" valign="top" class="Header">Wedding Favorites Gallery</td>
                    </tr>
                    <tr>
                      <td align="left" valign="top">&nbsp;</td>
                      <td valign="top">&nbsp;</td>
                    </tr>
                    <tr>
                      <td width="301" align="left" valign="top">
                      While the possibilities are unlimited, here are some of our most popular ideas...
                        <p>
                        --<a href="wedding/castle_grande.jpg">Castle Grande</a><br />
                        --<a href="wedding/pages/dancing_bride_and_groom.html">Dancing Bride &amp; Groom</a><br />
                        --<a href="wedding/pages/double_hearts_with_roses.html">Double Hearts w/ Roses</a><br />
                        --<a href="wedding/pages/eiffel_tower.html">Eiffel Tower</a><br />
                        --<a href="wedding/pages/garden_arbor.html">Garden Arbor</a><br />
                        --<a href="wedding/pages/graceful_swan.html">Graceful Swan</a><br />
                        --<a href="wedding/pages/heart_with_names.html">Heart w/ Names</a><br />
                        --<a href="wedding/pages/heart_with_names_on_column.html">Heart w/ Names on Column</a><br />
                        --<a href="wedding/pages/horse_and_carriage.html">Horse and Carriage</a><br />
                        --<a href="wedding/pages/kissing_dolphins.html">Kissing Dolphins</a><br />
                        --<a href="wedding/pages/kissing_swans.html">Kissing Swans</a></p>
                        </td>
                      <td width="225" align="center" valign="top">
                      <a href="wedding/pages/dancing_bride_and_groom.html">
                      <img src="images/dancing_bride_groom.jpg" width="225" height="261" /></a><br />
                      <em>&quot;Dancing Bride and Groom&quot;</em></td>
                    </tr>
                  </table>
                  <!-- InstanceEndEditable --></td>
        </tr>
	 </table>	</td>
  </tr>
  
  <tr>
    <td colspan="3" align="center" bgcolor="#000033" class="Content"><p>Appleton, WI (920) 954-9191</p>    </td>
  </tr>
  <tr>
    <td colspan="3" align="center" bgcolor="#000033" class="Footer">Website designed by <a href="mailto:Brandon.J.Salmon@Gmail.com">Brandon Salmon</a></td>
  </tr>
</table>
<script src="http://www.google-analytics.com/urchin.js" type="text/javascript">
</script>
<script type="text/javascript">
_uacct = "UA-2229142-2";
urchinTracker();
</script>
</body>
<!-- InstanceEnd -->
</html>