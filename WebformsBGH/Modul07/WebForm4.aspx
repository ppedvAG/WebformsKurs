<%@ Page Title="" Language="C#" MasterPageFile="~/Modul07/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="WebformsBGH.Modul07.WebForm4" %>

<%@ Register Src="~/Modul07/WebUserControl1.ascx" 
    TagPrefix="uc1" TagName="WebUserControl1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:WebUserControl1 runat="server"
        Text="Hannes" 
        ID="WebUserControl1" />
    <uc1:WebUserControl1 runat="server"
        Text="franz" 
        ID="WebUserControl2" />
    <uc1:WebUserControl1 runat="server"
        Text="Fritz" 
        ID="WebUserControl3" />

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Scripts" runat="server">
</asp:Content>
