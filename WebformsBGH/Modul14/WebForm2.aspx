<%@ Page Title="" Language="C#" MasterPageFile="~/Modul07/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebformsBGH.Modul14.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table>
        <asp:Repeater ID="Repeater1" runat="server"
            SelectMethod="Repeater1_GetData"
            ItemType="WebformsBGH.Modul05.PlzOrt">
            <ItemTemplate>
                <tr>
                    <td><%#Item.Plz %></td>
                    <td><%#Item.Ort %></td>
                </tr>
            </ItemTemplate>
        </asp:Repeater>
    </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Scripts" runat="server">
</asp:Content>
