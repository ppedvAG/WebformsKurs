<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebformsBGH.Modul01.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <script runat="server">
        int i = 0;

    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <%=DateTime.Now %>

            <%if (TextBox1.Text == "0")
                { %>
            <p>html block für 0</p>
            <%}
            else
            { %>
            <p>html block für alles andere</p>
            <% }%>
        </div>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Button" />
     </form>
</body>
</html>
