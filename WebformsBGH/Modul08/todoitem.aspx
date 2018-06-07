<%@ Page Title="" Language="C#" MasterPageFile="~/Modul07/Site1.Master" AutoEventWireup="true" CodeBehind="todoitem.aspx.cs" Inherits="WebformsBGH.Modul08.todoitem" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col">
            <h1>Todo Items Edit </h1>

            <asp:FormView ID="FormView1" runat="server">
                <EditItemTemplate>
                    Erledigt 
                    <asp:CheckBox ID="CheckBox1" runat="server"
                        Checked='<%#Bind("Erledigt") %>' /><br />
                    Aufgabe <%#Eval("Aufgabe") %><br />
                    <asp:Button ID="Button1"
                        CssClass="btn btn-danger"
                        runat="server" Text="speichern" CommandName="update" />
                </EditItemTemplate>

            </asp:FormView>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Scripts" runat="server">
</asp:Content>
