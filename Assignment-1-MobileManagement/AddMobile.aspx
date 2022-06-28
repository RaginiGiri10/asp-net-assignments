<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddMobile.aspx.cs" Inherits="Assignment_1_MobileManagement.AddMobile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="XX-Large" Font-Underline="True" ForeColor="Black" Text="Add Mobiles in The Store"></asp:Label>
            <br />
        </div>
        <asp:Label ID="Label1" runat="server" Text="Name" Font-Bold="True" ForeColor="Blue"></asp:Label>
        <br />
        <br />
        <asp:TextBox ID="txtName" runat="server" BorderColor="Black"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label2" runat="server" Text="Description" Font-Bold="True" ForeColor="#0000CC"></asp:Label>
        <br />
        <br />
        <asp:TextBox ID="txtDescription" runat="server" BorderColor="Black"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="ManufacturedBy" Font-Bold="True" ForeColor="#0000CC"></asp:Label>
        <br />
        <br />
        <asp:TextBox ID="txtManufacturedBy" runat="server" BorderColor="Black"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="Price" Font-Bold="True" ForeColor="#0000CC"></asp:Label>
        <br />
        <br />
        <asp:TextBox ID="txtPrice" runat="server" BorderColor="Black"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btnAddMobile" runat="server" OnClick="btnAddMobile_Click" Text="Add Mobile" Font-Bold="True" ForeColor="#660033" />
    </form>
</body>
</html>
