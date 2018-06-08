<%@ Page Title="" Language="C#" MasterPageFile="~/Modul07/Site1.Master" AutoEventWireup="true" CodeBehind="chatsite.aspx.cs" Inherits="WebformsBGH.Modul15.chatsite" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <input id="Text1" type="text" />
    <input id="Button1" type="button" value="button" onclick="send();" />
    <ul id="chatliste">
    </ul>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Scripts" runat="server">
    <script src="../Scripts/jquery.signalR-2.2.3.js"></script>
    <script src="../SignalR/hubs"></script>
    <script>
        var chat = $.connection.myHub1; //Kleinbuchstabe HUb Klasse
        chat.client.UpdateListe = function (data) {
                $("ul").append("<li>"+data+"</li>");
        };
        $.connection.hub.start().done(function () {
           $("ul").append("<li>connected...</li>");
        });
        function send() {
            chat.
        }
</script>

</asp:Content>
