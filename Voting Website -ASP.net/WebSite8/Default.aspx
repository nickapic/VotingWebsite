<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>
            <asp:Label ID="Label2" runat="server" Font-Names="Nexa Bold" Text="SURVEY CREATER"></asp:Label>
        </h1>
        <p class="lead">
            <asp:Label ID="Label1" runat="server" Font-Names="Nexa Light" Text="Create free surveys for all of your daily needs"></asp:Label>
        </p>
        <p>
            <asp:Button ID="Button1" runat="server" BackColor="#CCCCCC" BorderStyle="None" Font-Names="Nexa Bold" ForeColor="Black" Height="61px" OnClick="Button1_Click" Text="Create a Survey" Width="184px" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" BackColor="#CCCCCC" BorderStyle="None" Font-Names="Nexa Bold" ForeColor="Black" Height="58px" OnClick="Button2_Click" Text="Select a Survey" Width="179px" />
        </p>
        <p>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:dbconnect3 %>" SelectCommand="SELECT * FROM [Response]"></asp:SqlDataSource>
        </p>
    </div>

    <div class="row">
        <div class="col-md-4">
            <h2>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" Font-Names="Nexa Light" Font-Size="Medium" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                        <asp:BoundField DataField="SurveyResponse" HeaderText="SurveyResponse" SortExpression="SurveyResponse" />
                        <asp:BoundField DataField="SurveyQuestion" HeaderText="SurveyQuestion" SortExpression="SurveyQuestion" />
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
            </h2>
        </div>
        <div class="col-md-4">
            <h2>&nbsp;</h2>
        </div>
    </div>
</asp:Content>
