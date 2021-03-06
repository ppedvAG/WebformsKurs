﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ToDoModelBinding.aspx.cs" Inherits="WebformsBGH.Modul09.ToDoModelBinding" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
              <ul>
            <asp:Repeater ID="rptToDo"
                ItemType="WebformsBGH.Modul09.mbToDo"
                SelectMethod="rptToDo_GetData"
                OnItemCommand="rptToDo_ItemCommand"
                runat="server">
                <ItemTemplate>
                    <li><%#Item.Aufgabe %> <%#Item.Erledigt %>
                        <asp:Button ID="Button1" CssClass="btn btn-danger" 
                            CommandName="DO" 
                            runat="server" Text="x" /></li>
                </ItemTemplate>
            </asp:Repeater>
        </ul>
        </div>
    </form>
</body>
</html>
