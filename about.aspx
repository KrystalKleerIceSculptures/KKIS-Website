<%@ Page Language="C#" AutoEventWireup="true" CodeFile="about.aspx.cs" Inherits="About" %>

<%@ Register TagPrefix="uc" TagName="KKISHeader" Src="header.ascx" %>
<%@ Register TagPrefix="uc" TagName="KKISSidebar" Src="sidebar.ascx" %>
<%@ Register TagPrefix="uc" TagName="KKISFooter" Src="footer.ascx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="KKIS.css" rel="stylesheet" type="text/css" />
    <title>Krystal Kleer Ice Sculptures - About Us</title>
</head>
<body>
    <div class="KKIS">
        <uc:KKISHeader runat="server"></uc:KKISHeader>
        <div class="Content">
            <uc:KKISSidebar runat="server">
            </uc:KKISSidebar>
            <div id="PageContent">
                <div id="PageTitle">
                    A Brief History of Krystal Kleer Ice Sculptures</div>
                <img alt="Paul and Judi Salmon" src="Images/paul_judi_salmon.jpg" style="float: right" />
                <p style="margin-left: 40px">
                    Krystal Kleer Ice Sculptures was founded as a part-time business in 1988 by Paul
                    Salmon while he was working as a chef in Green Bay, WI. The business moved to Appleton,
                    WI in 1994. In 1998 Krystal Kleer became a full-time career for Paul.</p>
                <p style="margin-left: 40px">
                    Paul's family assists him at Krystal Kleer Ice in the office and with deliveries.</p>
                <p style="margin-left: 40px">
                    Paul attributes his talent to God our creator, and strives to honor Him through
                    his talent as a carver.</p>
                <p style="margin-left: 40px">
                    Krystal Kleer Ice Sculptures, LLC. Reserves the right to exercise discretion in
                    regards to each sculpture requested, and reserves the right to deny any carving
                    which might be considered objectionable or offensive in nature.</p>
                <div id="Signature">
                    In Him,<br />
                    Paul Salmon</div>
                <div id="EndContent">
                </div>
            </div>
        </div>
        <uc:KKISFooter runat="server">
        </uc:KKISFooter>
    </div>
</body>
</html>
