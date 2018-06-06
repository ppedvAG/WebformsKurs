<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm5.aspx.cs" Inherits="WebformsBGH.Modul07.WebForm5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server"><div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:WebformsDBConnectionString1 %>"
            SelectCommand="SELECT * FROM [Personen]"></asp:SqlDataSource>
        <ul>
        <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
            <ItemTemplate>
                <li><%#Eval("Fullname") %></li>
            </ItemTemplate>
        </asp:Repeater>

        </ul>
        </div>
    </form>
</body>
</html>
