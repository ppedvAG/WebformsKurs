<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="todo.aspx.cs" Inherits="WebformsBGH.modul04.todo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>Aufgabe erfassen</h3>
            <asp:TextBox ID="task" runat="server">
            </asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Button"
                OnClick="Button1_Click"
                />
            <hr />


        </div>
    </form>
</body>
</html>
