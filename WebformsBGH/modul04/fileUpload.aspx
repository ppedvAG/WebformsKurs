<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="fileUpload.aspx.cs" Inherits="WebformsBGH.modul04.fileUpload" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>datei hochladen
            <asp:FileUpload ID="FileUpload1" runat="server"   />
            <asp:Button ID="Button1" runat="server" Text="upload" 
                
                OnClick="Button1_Click" />
            
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <asp:Image ID="Image1" runat="server" />
        </div>
    </form>
</body>
</html>
