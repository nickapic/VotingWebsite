<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Creating Sruvey thing.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 style="background-color: #CCCCCC">
                <asp:Label ID="Label1" runat="server" Font-Names="Nexa Bold" Text="Welcome!"></asp:Label>
            </h1>
        </div>
        <h2>
            <asp:Label ID="Label2" runat="server" Font-Names="Nexa Bold" Text="Create a Survey"></asp:Label>
        </h2>
        <h3>
            <asp:Label ID="Label3" runat="server" Font-Names="Nexa Bold" Text="Name of the Survey   :   "></asp:Label>
        </h3>
        <p>
            <asp:TextBox ID="TextBox1" runat="server" Font-Names="Nexa Light" Font-Size="Medium" Width="465px"></asp:TextBox>
        </p>
        <h3>
            <asp:Label ID="Label4" runat="server" Font-Names="Nexa Bold" Text="Author of the Survey :"></asp:Label>
        </h3>
        <p>
            <asp:TextBox ID="TextBox2" runat="server" Font-Names="Nexa Light" Font-Size="Medium" Width="463px"></asp:TextBox>
        </p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Button ID="Button1" runat="server" Font-Names="Nexa Light" Height="42px" OnClick="Button1_Click" Text="DONE" Width="132px" />
        </p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
