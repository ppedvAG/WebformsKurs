<%@ Page Title="" Language="C#" MasterPageFile="~/Modul07/Site1.Master" AutoEventWireup="true" CodeBehind="TODOListe.aspx.cs" Inherits="WebformsBGH.Modul08.TODOListe" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col">
            <h1>Todo Items</h1>
            <div class="list-group">
                <asp:Repeater ID="rptToDo" runat="server">
                    <ItemTemplate>
                        <a class="list-group-item list-group-item-action"
                            href='todoitem/<%#Eval("Id") %>'>
                            <%#Eval("Datum") %>: 
                    <%#Eval("Aufgabe") %> </a>
                    </ItemTemplate>
                </asp:Repeater>

            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Scripts" runat="server">
</asp:Content>
