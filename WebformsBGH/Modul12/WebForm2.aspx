<%@ Page Title="" Language="C#" MasterPageFile="~/Modul07/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebformsBGH.Modul12.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <span id="label1"></span>
    <input id="Button1" type="button" value="button" onclick="refresh();" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Scripts" runat="server">
    <script>

        function refresh() {
            $.ajax(
                {
                    type: "POST",
                    url: "zeit",
                    success: function (result) {
                        $('#label1').text(result);
                    }
                }
            );

        }
    </script>
</asp:Content>
