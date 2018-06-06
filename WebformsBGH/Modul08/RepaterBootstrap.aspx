<%@ Page Title="" Language="C#" MasterPageFile="~/Modul07/Site1.Master" AutoEventWireup="true" CodeBehind="RepaterBootstrap.aspx.cs" Inherits="WebformsBGH.Modul08.RepaterBootstrap" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col">
            <h1>Personen</h1>

            <div class="form-group">
                <label for="filter">filter</label>
                <asp:TextBox ID="filter" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" Text="tu es!" CssClass="btn btn-info" />
            </div>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server"
                ConnectionString="<%$ ConnectionStrings:WebformsDBConnectionString1 %>"
                SelectCommand="SELECT * FROM [Personen] WHERE ([FullName] LIKE '%' + @FullName + '%')">
                <SelectParameters>
                    <asp:ControlParameter ControlID="filter" DefaultValue="xxxx" 
                        Name="FullName" PropertyName="Text" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <ul class="list-group">
                <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                    <ItemTemplate>
                        <li class="list-group-item"><%#Eval("Fullname") %></li>
                    </ItemTemplate>
                </asp:Repeater>

            </ul>
        </div>
    </div>


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Scripts" runat="server">
</asp:Content>
