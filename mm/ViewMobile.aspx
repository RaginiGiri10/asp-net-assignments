<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewMobile.aspx.cs" Inherits="Assignment_1_MobileManagement.ViewMobile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Font-Strikeout="False" Font-Underline="True" ForeColor="#660033" Text="View All Mobiles"></asp:Label>
            <br />
            <br />
            <br />
            <asp:GridView ID="gridMobiles" runat="server" Height="202px" Width="446px">
            </asp:GridView>
        </div>
    </form>
</body>
</html>
