﻿<%@ Page Language="C#" AutoEventWireup="true"
    MaintainScrollPositionOnPostback="true"
    CodeBehind="WebForm1.aspx.cs" Inherits="WebformsBGH.Modul04.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <%for (int i = 0; i < 100; i++){%>
                <br />

               <% } %>
            <br />
            <asp:TextBox ID="TextBox1" runat="server"
                OnTextChanged="TextBox1_TextChanged"
                
                ></asp:TextBox>
            <asp:Button ID="Button1" runat="server"
                OnClick="Button1_Click"
                OnClientClick="return confirm('wirklich löschen?');"
                Text="Button" />
        </div>
    </form>
</body>
</html>
