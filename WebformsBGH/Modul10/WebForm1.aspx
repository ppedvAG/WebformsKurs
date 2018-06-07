<%@ Page Language="C#" AutoEventWireup="true"
  
    CodeBehind="WebForm1.aspx.cs" Inherits="WebformsBGH.Modul10.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server" autocomplete="off" novalidate>
        <div>
            <asp:TextBox ID="TextBox1"  runat="server"></asp:TextBox><br />
            <asp:RangeValidator ID="RangeValidator1" runat="server" Display="Dynamic"
                ControlToValidate="TextBox1" MinimumValue="00000" MaximumValue="99999"
                ErrorMessage="Plz von 00000-99999">*</asp:RangeValidator>
            <br />
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
                ControlToValidate="TextBox2"
                runat="server" ErrorMessage="da muss was rein">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" 
                Display="Dynamic"
                ControlToValidate="TextBox2"
               ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                runat="server" ErrorMessage="keine email Adresse">*</asp:RegularExpressionValidator>
            <asp:Button ID="Button1" runat="server" Text="Button"
                OnClick="Button1_Click"/>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" />

        </div>
    </form>
    <script src="../Scripts/jquery-3.3.1.js"></script>
</body>
</html>
