<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebformsBGH.Modul06.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="../Content/bootstrap.css" rel="stylesheet" />
    <link href="../Content/font-awesome.css" rel="stylesheet" />
    <link href="../Content/Site.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="row">
                <div class="col-3">
                    a
                </div>
                <div class="col-3">
                    b
                </div>
                <div class="col-3">
                    c
                </div>
                <div class="col-3">
                </div>
            </div>
            <div class="row">
                <div class="card">
                    <div class="card-header">
                        Featured
                    </div>
                    <div class="card-body">
                        <h5 class="card-title">Special title treatment</h5>
                        <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>

                        <asp:Button
                            CssClass="btn btn-outline-primary"
                            ID="Button1" runat="server" Text="Button" />
                    </div>
                </div>
                <div class="card">
                    <div class="card-header">
                        Featured
                    </div>
                    <div class="card-body">
                        <h5 class="card-title">Special title treatment</h5>
                        <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>

                        <asp:Button
                            CssClass="btn btn-outline-primary"
                            ID="Button2" runat="server" Text="Button" />
                    </div>
                </div>
                <div class="card">
                    <div class="card-header">
                        Featured
                    </div>
                    <div class="card-body">
                        <h5 class="card-title">Special title treatment</h5>
                        <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>

                        <asp:Button
                            CssClass="btn btn-outline-primary"
                            ID="Button3" runat="server" Text="Button" />
                    </div>
                </div>
                <div class="card">
                    <div class="card-header">
                        Featured
                    </div>
                    <div class="card-body">
                        <h5 class="card-title">Special title treatment</h5>
                        <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>

                        <asp:Button
                            CssClass="btn btn-outline-primary"
                            ID="Button4" runat="server" Text="Button" />
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="form-group">
                    <label for="text1" class="col-md-2 col-form-label">Beschriftung</label>
                    <div class="col-md-10">

                        <asp:TextBox ID="text1" class="form-control"
                            runat="server" placeholder="da kommt nix rein">

                        </asp:TextBox>
                    </div>
                </div>

            </div>
            <div class="row">
                https://fontawesome.com/icons?d=gallery&q=search
                <div class="input-group">

                    <input type="text" class="form-control"
                        placeholder="text"
                        aria-label="Input group example"
                        aria-describedby="btnGroupAddon">
                    <div class="input-group-append ">
                        <div class="input-group-text" id="btnGroupAddon">
                            <i class="fa fa-search" style="color:blue"></i>
                        
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </form>
    <script src="../Scripts/jquery-3.3.1.js"></script>
    <script src="../Scripts/bootstrap.js"></script>
</body>
</html>
