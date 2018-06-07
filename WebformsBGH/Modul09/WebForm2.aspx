<%@ Page Title="" Language="C#" MasterPageFile="~/Modul07/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebformsBGH.Modul09.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col">
            <ul>
                <asp:Repeater ID="rptToDo"
                    ItemType="WebformsBGH.Modul09.ToDo"
                   SelectMethod="rptToDo_GetData"
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
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Scripts" runat="server">
</asp:Content>
