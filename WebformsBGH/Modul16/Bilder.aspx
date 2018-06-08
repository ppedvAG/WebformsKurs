<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Bilder.aspx.cs" Inherits="WebformsBGH.Modul16.Bilder" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Repeater ID="Repeater1"
                ItemType="System.String" SelectMethod="Repeater1_GetData"
                runat="server">
                <ItemTemplate>
                    <%--    <img src="bilder/<%#Item %>" height="200" width="300" />--%>
                    <a href="bilder/<%#Item %>.jpg">
                        <img src="trhumbnail.ashx?bild=<%# Item %>" />
                    </a>
                </ItemTemplate>

            </asp:Repeater>
        </div>
    </form>
</body>
</html>
