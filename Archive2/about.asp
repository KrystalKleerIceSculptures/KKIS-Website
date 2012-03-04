<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><!-- InstanceBegin template="/Templates/kkistemplate.dwt.asp" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- InstanceBeginEditable name="doctitle" -->
<title>Krystal Kleer Ice Sculptures About Us - Ice Carvings for Weddings, Events, Holidays in the Fox Valley and Beyond</title>
<meta name="Description" content="About Krystal Kleer Ice Sculptures, a small business in Appleton, WI, serving the greater Fox Valley with hand carved ice sculptures for weddings, banquets, events and other fuctions." />
<meta name="Keywords" content="krystal kleer, crystal clear, kkis, krystal kleer ice sculptures, crystal clear ice sculptures, ice, sculpture, carving, ice sculpture, ice carving, planning, idea, wedding, banquet, event, decoration, event decoration, business, centerpiece, appleton, green bay, fox valley, wisconsin, business, wedding planning, event planning, functional ideas, decorations for weddings, decorations for events, about, paul salmon" />
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
                      <td colspan="2" align="center" valign="top" class="Header">A BRIEF HISTORY OF<br />
                      KRYSTAL KLEER ICE SCULPTURES</td>
                    </tr>
                    <tr>
                      <td colspan="2" align="center" valign="top">&nbsp;</td>
                    </tr>
                    <tr>
                      <td width="330" align="left" valign="top">
                      <p><b><i>Krystal Kleer Ice Sculptures</i></b> was founded as a part-time business in 1988 by Paul Salmon while he was working as a chef in Green Bay, WI. The business moved to Appleton, WI in 1994. In 1998 Krystal Kleer became a full-time career for Paul.</p><p>Paul's family assists him at Krystal Kleer Ice in the office and with deliveries.</p><p>Paul attributes his talent to God our creator, and strives to honor Him through his talent as a carver.</p><p>Krystal Kleer Ice Sculptures, LLC. Reserves the right to exercise discretion in regards to each sculpture requested, and reserves the right to deny any carving which might be considered objectionable or offensive in nature.</p></td>
                      <td width="225"><img src="images/paul.jpg" width="225" height="251" /></td>
                    </tr>
                    <tr>
                      <td align="right" valign="top" class="Header">In Him,<br />
                      Paul Salmon</td>
                      <td>&nbsp;</td>
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
