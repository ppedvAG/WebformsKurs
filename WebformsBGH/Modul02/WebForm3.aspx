<%@ Page Language="C#" AutoEventWireup="true" 
     %>

<!DOCTYPE html>
<script runat="server">

    protected void Button1_Click(object sender, EventArgs e)
    {
        TextBox1.Text = Text1.Value;
    }
</script>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="TextBox1" runat="server"
                TextMode="MultiLine"
                ></asp:TextBox>
            <input id="Text1" type="text" runat="server"/>
            <asp:Button ID="Button1"
                Width="300" Height="300"
                cssclass="" ClientIDMode="Static"
               runat="server" OnClick="Button1_Click" Text="Button" />
        </div>
    </form>
</body>
</html>
