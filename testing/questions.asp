<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><!-- InstanceBegin template="/Templates/kkistemplate.dwt.asp" codeOutsideHTMLIsLocked="false" -->
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!-- InstanceBeginEditable name="doctitle" -->
<title>Krystal Kleer Ice Sculptures Frequently Asked Questions - Ice Carvings for Weddings, Events, Holidays in the Fox Valley and Beyond</title>
<meta name="Description" content="Frequently Asked Questions for Krystal Kleer Ice Sculptures, a small business in Appleton, WI, serving the greater Fox Valley with hand carved ice sculptures for weddings, banquets, events and other fuctions." />
<meta name="Keywords" content="krystal kleer, crystal clear, kkis, krystal kleer ice sculptures, crystal clear ice sculptures, ice, sculpture, carving, ice sculpture, ice carving, planning, idea, wedding, banquet, event, decoration, event decoration, business, centerpiece, appleton, green bay, fox valley, wisconsin, business, wedding planning, event planning, functional ideas, decorations for weddings, decorations for events, frequently asked questions, questions, faq" />
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
                  <table width="100%" cellspacing="5" cellpadding="5">
                    <tr>
                      <td align="center" class="Header">FREQUENTLY ASKED QUESTIONS</td>
                    </tr>
                    <tr><td>&nbsp;</td></tr>
                    <tr><td align="left" bgcolor="#000033"><strong>How long will my carving last?</strong></td>
                    </tr>
                    <tr>
                      <td align="left">
                      Our Ice Sculptures are designed to have a show life of 6 to 8 hours. Details will soften as the evening goes on,  giving the sculpture a very smooth and graceful appearance.                      </td>
                    </tr>
                    <tr><td>&nbsp;</td>
                    </tr>
                    <tr><td align="left" bgcolor="#000033"><strong>Do you use molds?</strong></td>
                    </tr>
                    <tr>
                      <td align="left">
                      No, all of our sculpture are hand carved with one exception being &quot;punch Bowl&quot; which starts with a mold and then is etched by hand.                      </td>
                    </tr>
                    <tr><td>&nbsp;</td>
                    </tr>
                    <tr><td align="left" bgcolor="#000033"><strong>How long does it take to make an ice carving?</strong></td>
                    </tr>
                    <tr>
                      <td align="left">
                      Carving time ranges from 45 minutes to 8 hours or more depending on the difficulty of the carving.                      </td>
                    </tr>
                    <tr><td>&nbsp;</td>
                    </tr>
                    <tr><td align="left" bgcolor="#000033"><strong>How far in advance do I need to order an ice carving?</strong></td>
                    </tr>
                    <tr>
                      <td align="left">
                      We appreciate as much notice as possible to insure date availability, although last minute orders are often possible. Two to six months is the norm A $100.00 deposit secures your date and applies towards the purchase price, the balance is due two weeks  prior to event.                      </td>
                    </tr>
                    <tr>
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
