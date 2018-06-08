<%@ Page Title="" Language="C#" MasterPageFile="~/Modul07/Site1.Master"
    AutoEventWireup="true" CodeBehind="AutoCompleteOrt.aspx.cs"
    Inherits="WebformsBGH.Modul15.AutoCompleteOrt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Content/jquery-ui.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Scripts" runat="server">
    <script src="../Scripts/jquery-ui.js"></script>
    <script>
        $("#TextBox1").autocomplete({
            source: function (request, response) {
                var param = { Par: $('#TextBox1').val() };

                $.ajax({
                    type: "POST",
                    url: "AutoCompleteOrt.aspx/CompleteText",
                    contentType: "application/json;charset=utf-8",
                    data: JSON.stringify(param),
                    success: function (result) {
                        response($.map(result.d), function (item) {
                            return { value: item.Plz + ":" + item.Ort }
                        })

                    },
                    error: function (request, status, err) {
                        alert(request.responseText);
                    }
                })
            },
            minLength: 2

        });
    </script>
</asp:Content>
