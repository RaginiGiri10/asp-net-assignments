<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddMobile.aspx.cs" Inherits="Assignment_Mobile_Management_Templated.AddMobile" MasterPageFile="~/Site.Master" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <asp:Label ID="lblName" runat="server" Text="Name"></asp:Label>
    <br />
    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>

    <asp:RequiredFieldValidator runat="server" ID="rqfvtxtName" ControlToValidate="txtName" ErrorMessage ="Name is mandatory" ForeColor="Red"></asp:RequiredFieldValidator>

    <br />
     <asp:Label ID="lblDescription" runat="server" Text="Description"></asp:Label>
    <br />
    <asp:TextBox ID="txtDescription" runat="server"></asp:TextBox>
     <asp:RequiredFieldValidator runat="server" ID="rqfvtxtDescription" ControlToValidate="txtDescription" ErrorMessage ="Description is mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="lblPrice" runat="server" Text="Price"></asp:Label>
    <br />
    <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" ControlToValidate="txtPrice" ErrorMessage ="Price is mandatory" ForeColor="Red"></asp:RequiredFieldValidator>
    <br />
    <asp:Label ID="lblManufacture" runat="server" Text="Manufactured By"></asp:Label>
     <br />
    <asp:DropDownList ID="ddlManufactures" runat="server"></asp:DropDownList>
    <br />
    <asp:Button ID="btnAddMobile" runat="server" Text="Add Mobile" OnClick="btnAddMobile_Click" />

</asp:Content>
