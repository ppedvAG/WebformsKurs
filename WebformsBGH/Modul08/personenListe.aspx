<%@ Page Title="" Language="C#" MasterPageFile="~/Modul07/Site1.Master" AutoEventWireup="true" CodeBehind="personenListe.aspx.cs" Inherits="WebformsBGH.Modul08.personenListe" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <div class="col">
            <h1>AUFGABE PRO PERSON</h1>
            <asp:DropDownList ID="drpPersonen" runat="server" CssClass="form-control"
                DataTextField="FullName" 
                DataValueField="Bearbeiter"
                OnSelectedIndexChanged="drpPersonen_SelectedIndexChanged"
                
                ></asp:DropDownList>
        </div>
    </div>
     <div class="row">
        <div class="col">
            </div>
         </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Scripts" runat="server">
</asp:Content>
