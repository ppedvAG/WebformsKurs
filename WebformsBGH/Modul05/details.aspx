<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="details.aspx.cs" Inherits="WebformsBGH.Modul05.details" %>
<%@ Import Namespace="Microsoft.AspNet.FriendlyUrls" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1><%=Request.QueryString["id"] %></h1>
            <h1><%=Request.GetFriendlyUrlSegments()[0] %></h1>

            
        </div>
    </form>
</body>
</html>
