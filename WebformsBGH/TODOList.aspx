<%@ Page Title="" Language="C#" MasterPageFile="~/Modul07/Site1.Master" AutoEventWireup="true" CodeBehind="TODOList.aspx.cs" Inherits="WebformsBGH.TODOList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">




    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebformsDBConnectionString1 %>" DeleteCommand="DELETE FROM [ToDo] WHERE [Id] = @Id" InsertCommand="INSERT INTO [ToDo] ([Aufgabe], [Datum], [Erledigt], [Bearbeiter]) VALUES (@Aufgabe, @Datum, @Erledigt, @Bearbeiter)" SelectCommand="SELECT * FROM [ToDo]" UpdateCommand="UPDATE [ToDo] SET [Aufgabe] = @Aufgabe, [Datum] = @Datum, [Erledigt] = @Erledigt, [Bearbeiter] = @Bearbeiter WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Aufgabe" Type="String" />
            <asp:Parameter Name="Datum" Type="DateTime" />
            <asp:Parameter Name="Erledigt" Type="Boolean" />
            <asp:Parameter Name="Bearbeiter" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Aufgabe" Type="String" />
            <asp:Parameter Name="Datum" Type="DateTime" />
            <asp:Parameter Name="Erledigt" Type="Boolean" />
            <asp:Parameter Name="Bearbeiter" Type="String" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>




    <asp:FormView ID="FormView1" runat="server" DataKeyNames="Id" 
        DefaultMode="Insert"
        DataSourceID="SqlDataSource1">
        <EditItemTemplate>
            Id:
            <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
            <br />
            Aufgabe:
            <asp:TextBox ID="AufgabeTextBox" runat="server" Text='<%# Bind("Aufgabe") %>' />
            <br />
            Datum:
            <asp:TextBox ID="DatumTextBox" runat="server" Text='<%# Bind("Datum") %>' />
            <br />
            Erledigt:
            <asp:CheckBox ID="ErledigtCheckBox" runat="server" Checked='<%# Bind("Erledigt") %>' />
            <br />
            Bearbeiter:
            <asp:TextBox ID="BearbeiterTextBox" runat="server" Text='<%# Bind("Bearbeiter") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Aktualisieren" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Abbrechen" />
        </EditItemTemplate>
        <InsertItemTemplate>
            Aufgabe:
            <asp:TextBox ID="AufgabeTextBox" runat="server" 
                cssclass="form-control"
                Text='<%# Bind("Aufgabe") %>' />
            <br />
            Datum:
            <asp:TextBox ID="DatumTextBox" runat="server"
                cssclass="form-control"
                Text='<%# Bind("Datum") %>' />
            <br />
                Bearbeiter:
           
            <asp:DropDownList cssclass="form-control" ID="DropDownList1"
                DataSourceID="SqlDataSourcePersonen"
                    runat="server" 
                DataTextField="FullName" DataValueField="Bearbeiter" 
                SelectedValue='<%# Bind("Bearbeiter") %>'></asp:DropDownList>
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CssClass="btn btn-outline-primary"
                CausesValidation="True" CommandName="Insert" Text="Einfügen" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" 
                CssClass="btn btn-outline-secondary"
                runat="server" CausesValidation="False" CommandName="Cancel" Text="Abbrechen" />
        </InsertItemTemplate>
        <ItemTemplate>
            Id:
            <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
            <br />
            Aufgabe:
            <asp:Label ID="AufgabeLabel" runat="server" Text='<%# Bind("Aufgabe") %>' />
            <br />
            Datum:
            <asp:Label ID="DatumLabel" runat="server" Text='<%# Bind("Datum") %>' />
            <br />
            Erledigt:
            <asp:CheckBox ID="ErledigtCheckBox" runat="server" Checked='<%# Bind("Erledigt") %>' Enabled="false" />
            <br />
            Bearbeiter:
            <asp:Label ID="BearbeiterLabel" runat="server" Text='<%# Bind("Bearbeiter") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Bearbeiten" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Löschen" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="Neu" />
        </ItemTemplate>
    </asp:FormView>
    <ul class="list-group">
         <asp:Repeater ID="Repeater1" runat="server"
            DataSourceID="SqlDataSource1">
            <ItemTemplate>
                <li class="list-group-item"><%#Eval("Bearbeiter") %>: <%#Eval("Aufgabe") %> </li>
            </ItemTemplate>
        </asp:Repeater>

    </ul>
        <asp:SqlDataSource ID="SqlDataSourcePersonen" runat="server"
            ConnectionString="<%$ ConnectionStrings:WebformsDBConnectionString1 %>" 
            SelectCommand="SELECT * FROM [Personen] ORDER BY [FullName]">

        </asp:SqlDataSource>
   


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Scripts" runat="server">
</asp:Content>
