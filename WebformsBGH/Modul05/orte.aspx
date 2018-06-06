<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="orte.aspx.cs" Inherits="WebformsBGH.Modul05.orte" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
           
            <%foreach (var item in Liste)
                { %>
                <tr>
                    <td><%=item.Plz %></td>
                    <td><%=item.Ort %></td>
                </tr>
               <% } %>

            </table>
        </div>
    </form>
</body>
</html>
