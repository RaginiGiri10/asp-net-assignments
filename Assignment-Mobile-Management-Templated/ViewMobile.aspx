﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewMobile.aspx.cs" Inherits="Assignment_Mobile_Management_Templated.ViewMobile" MasterPageFile="~/Site.Master" %>

<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">

    <asp:Label ID="header" runat="server" Text ="Mobiles" Font-Bold="true"></asp:Label>

    <asp:GridView ID="gridMobiles" runat ="server" Height="341px" Width="705px"></asp:GridView>


</asp:Content>

