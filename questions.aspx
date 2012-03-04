<%@ Page Language="C#" AutoEventWireup="true" CodeFile="questions.aspx.cs" Inherits="Questions" %>

<%@ Register TagPrefix="uc" TagName="KKISHeader" Src="header.ascx" %>
<%@ Register TagPrefix="uc" TagName="KKISSidebar" Src="sidebar.ascx" %>
<%@ Register TagPrefix="uc" TagName="KKISFooter" Src="footer.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="KKIS.css" rel="stylesheet" type="text/css" />
    <title>Wisconsin Ice Sculptures</title>
</head>
<body>
    <div class="KKIS">
        <uc:KKISHeader runat="server"></uc:KKISHeader>
        <div class="Content">
            <uc:KKISSidebar runat="server"></uc:KKISSidebar>
            <div id="PageContent">
                <div id="PageTitle">
                    Frequently Asked Questions</div>
                <div class="BlueBox">
                    How long will my carving last?</div>
                <div class="Indented">
                    Our Ice Sculptures are designed to have a show life of 6 to 8 hours. Details will
                    soften as the evening goes on, giving the sculpture a very smooth and graceful appearance.
                </div>
                <div class="BlueBox">
                    Do you use molds?
                </div>
                <div class="Indented">
                    No, all of our sculpture are hand carved with one exception being "Punch Bowl" which
                    starts with a mold and then is etched by hand.
                </div>
                <div class="BlueBox">
                    How long does it take to make an ice carving?
                </div>
                <div class="Indented">
                    Carving time ranges from 45 minutes to 8 hours or more depending on the difficulty
                    of the carving.
                </div>
                <div class="BlueBox">
                    How far in advance do I need to order an ice carving?
                </div>
                <div class="Indented">
                    We appreciate as much notice as possible to insure date availability, although last
                    minute orders are often possible. Two to six months is the norm A $100.00 deposit
                    secures your date and applies towards the purchase price, the balance is due two
                    weeks prior to event.</div>
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
