<%@ Page Title="" Language="C#" MasterPageFile="~/Modul07/Site1.Master" AutoEventWireup="true" CodeBehind="Personen.aspx.cs" Inherits="WebformsBGH.Modul09.Personen1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:FormView ID="FormView1" runat="server"
        ItemType="WebformsBGH.Modul09.Personen"
        SelectMethod="FormView1_GetItem"
        UpdateMethod="FormView1_UpdateItem"

        DataKeyNames="Id">
        <ItemTemplate>
            <%#Item.Id %><br />
            <%#Item.Bearbeiter%><br />
            <%#Item.FullName %><br />
            <%#Item.Ort %><br />
            <asp:Button ID="Button1" runat="server" CommandName="Edit" Text="Edit" />
        </ItemTemplate>
        <EditItemTemplate>
            <%#Item.Id %><br />
            <%#Item.Bearbeiter%><br />
            <asp:TextBox ID="TextBox1" runat="server" Text="<%#BindItem.FullName %>"></asp:TextBox><br />
            <asp:TextBox ID="TextBox2" runat="server" Text="<%#BindItem.Ort %>"></asp:TextBox><br />
             <asp:Button ID="Button3" runat="server" Text="cancel"
                CommandName="cancel"                />
            <asp:Button ID="Button2" runat="server" Text="speichern"
                CommandName="update"/>
        </EditItemTemplate>
    </asp:FormView>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Scripts" runat="server">
</asp:Content>
