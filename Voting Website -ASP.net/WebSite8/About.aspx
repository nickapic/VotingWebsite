<%@ Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %>
        <asp:Label ID="Label3" runat="server" Font-Names="Nexa Bold" Text="About"></asp:Label>
    </h2>
    <h3>
        <asp:Label ID="Label1" runat="server" Font-Names="Nexa Light" Text="Basically a very small website that can be used to create surveys for people/companies to use."></asp:Label>
    </h3>
    <p>
        <asp:Label ID="Label2" runat="server" Font-Names="Nexa Light" Text="Its completely free to use and provides a very easy to use UI."></asp:Label>
    </p>
</asp:Content>
