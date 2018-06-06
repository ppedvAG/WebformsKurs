<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="liste.aspx.cs" Inherits="WebformsBGH.Modul05.liste" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <ul>
                <li>
                    <a href="details?id=1">eins</a>
                </li>
                <li>
                    <a href="details?id=2">zwei</a>
                </li>
                <li>
                    <a href="details?id=3">drei</a>
                </li>
                <li>
                    <a href="details?id=4">vier</a>
                </li>
            </ul>
            <p>FriendlyUrl</p>
             <ul>
                <li>
                    <a href="details/1">eins</a>
                </li>
                <li>
                    <a href="details/2">zwei</a>
                </li>
                <li>
                    <a href="details/3">drei</a>
                </li>
                <li>
                    <a href="details/4">vier</a>
                </li>
            </ul>
        </div>
    </form>
</body>
</html>
