<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="WebformsBGH.modul04._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DropDownList ID="DropDownList1" runat="server" 
                AutoPostBack="True" 
                OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                <asp:ListItem Value="1">BMW</asp:ListItem>
                <asp:ListItem Value="2">AUDI</asp:ListItem>
                <asp:ListItem Value="3">VW</asp:ListItem>
                 <asp:ListItem Value="4">FORD</asp:ListItem>
                <asp:ListItem Value="5">KIA</asp:ListItem>
              
            </asp:DropDownList>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>

        </div>
    </form>
</body>
</html>
