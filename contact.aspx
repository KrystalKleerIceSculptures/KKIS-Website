<%@ Page Language="C#" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="Contact" %>

<%@ Register TagPrefix="uc" TagName="KKISHeader" Src="header.ascx" %>
<%@ Register TagPrefix="uc" TagName="KKISSidebar" Src="sidebar.ascx" %>
<%@ Register TagPrefix="uc" TagName="KKISFooter" Src="footer.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="KKIS.css" rel="stylesheet" type="text/css" />
    <title>Krystal Kleer Ice Sculptures - Contact Us</title>
</head>
<body>
    <div class="KKIS">
        <uc:KKISHeader runat="server"></uc:KKISHeader>
        <div class="Content">
            <uc:KKISSidebar runat="server"></uc:KKISSidebar>
            <div id="PageContent">
                <div id="PageTitle">
                    Contact Us</div>
                    <p style="margin-left: 40px">
                        <b>By Appointment Only</b></p>
                <p style="margin-left: 40px">
                Phone: (920) 954-9191<br />
                Fax: (920) 968-2929<br />
                Email: <a href="mailto:krystalkleericesculptures@yahoo.com">krystalkleericesculptures@yahoo.com</a></p>
                    <p style="margin-left: 40px">
                <iframe width="500" height="400" frameborder="0" scrolling="no" marginheight="0"
                    marginwidth="0" src="http://maps.google.com/maps?f=q&amp;hl=en&amp;geocode=&amp;time=&amp;date=&amp;ttype=&amp;q=Krystal+Kleer+Ice+Sculptures,+LLC&amp;sll=44.271509,-88.415565&amp;sspn=0.179458,0.291138&amp;ie=UTF8&amp;om=1&amp;cid=44243070,-88425285,5148557402392176891&amp;s=AARTsJpB76IwYbchhqTK-boE44N45UTlCw&amp;ll=44.269296,-88.408356&amp;spn=0.098337,0.171661&amp;z=12&amp;iwloc=A&amp;output=embed">
                </iframe></p>
            </div>
            <div id="EndContent">
            </div>
        </div>
    </div>
    <uc:KKISFooter runat="server"></uc:KKISFooter>
</body>
</html>
