<%@ Page Title="" Language="C#" MasterPageFile="~/ManagerDashboard.Master" AutoEventWireup="true" CodeBehind="CustomersDt.aspx.cs" Inherits="YourBank.CustomersDt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style13 {
            width: 1434px;
            height: 340px;
        }

        .auto-style27 {
            width: 200px;
            height: 0px;
            position: absolute;
            top: 277px;
            left: 216px;
            z-index: 1;
        }

        .auto-style28 {
            margin-left: 53px;
            margin-right: 0px;
        }

        .no-decoration a {
            text-decoration: none;
            color:blue;
        }
        .auto-style29 {
            position: absolute;
            top: 342px;
            left: 65px;
            z-index: 1;
            width: 164px;
            height: 33px;
            right: 1178px;
            text-align:center;
            padding-top:10px;
            text-decoration:none;
        }

        .cls
        {
            background-color:#1b86b2;;
            color:white;
            padding:2px;
            width:140px;
            text-decoration:none;
            
        }
        .cls:hover
        {
            background-color:tomato;
            color:yellow;           
            border:3px solid green;
            
        }
        .auto-style30 {
            position: absolute;
            top: 342px;
            left: 233px;
            z-index: 1;
             width: 164px;
            height: 33px;
            right: 1074px;
            text-align:center;
            padding-top:10px;
            text-decoration:none;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        &nbsp;</p>
    <p>
        <asp:HyperLink ID="HyperLink9" runat="server" Font-Bold="True" ForeColor="White" BackColor="#1191EE" CssClass="auto-style30" NavigateUrl="~/CloseAccount.aspx">CloseAccount</asp:HyperLink>
    </p>
    <p>
        <asp:HyperLink ID="HyperLink8" runat="server" BackColor="#1191EE" CssClass="auto-style29" NavigateUrl="~/PANValidate.aspx" Font-Bold="True" ForeColor="White">Open Account</asp:HyperLink>
    </p>
    <p>
        &nbsp;</p>
    <p>
        <br />
    </p>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BankPrjConnectionString %>" SelectCommand="SELECT * FROM [Customers]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Customers] WHERE [CID] = @original_CID AND (([CustomerName] = @original_CustomerName) OR ([CustomerName] IS NULL AND @original_CustomerName IS NULL)) AND (([CustomerAddress] = @original_CustomerAddress) OR ([CustomerAddress] IS NULL AND @original_CustomerAddress IS NULL)) AND (([PAN] = @original_PAN) OR ([PAN] IS NULL AND @original_PAN IS NULL)) AND (([DOB] = @original_DOB) OR ([DOB] IS NULL AND @original_DOB IS NULL)) AND (([Password] = @original_Password) OR ([Password] IS NULL AND @original_Password IS NULL)) AND (([AccountType] = @original_AccountType) OR ([AccountType] IS NULL AND @original_AccountType IS NULL))" InsertCommand="INSERT INTO [Customers] ([CustomerName], [CustomerAddress], [PAN], [DOB], [Password], [AccountType]) VALUES (@CustomerName, @CustomerAddress, @PAN, @DOB, @Password, @AccountType)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Customers] SET [CustomerName] = @CustomerName, [CustomerAddress] = @CustomerAddress, [PAN] = @PAN, [DOB] = @DOB, [Password] = @Password, [AccountType] = @AccountType WHERE [CID] = @original_CID AND (([CustomerName] = @original_CustomerName) OR ([CustomerName] IS NULL AND @original_CustomerName IS NULL)) AND (([CustomerAddress] = @original_CustomerAddress) OR ([CustomerAddress] IS NULL AND @original_CustomerAddress IS NULL)) AND (([PAN] = @original_PAN) OR ([PAN] IS NULL AND @original_PAN IS NULL)) AND (([DOB] = @original_DOB) OR ([DOB] IS NULL AND @original_DOB IS NULL)) AND (([Password] = @original_Password) OR ([Password] IS NULL AND @original_Password IS NULL)) AND (([AccountType] = @original_AccountType) OR ([AccountType] IS NULL AND @original_AccountType IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_CID" Type="Int32" />
            <asp:Parameter Name="original_CustomerName" Type="String" />
            <asp:Parameter Name="original_CustomerAddress" Type="String" />
            <asp:Parameter Name="original_PAN" Type="String" />
            <asp:Parameter Name="original_DOB" Type="DateTime" />
            <asp:Parameter Name="original_Password" Type="String" />
            <asp:Parameter Name="original_AccountType" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="CustomerName" Type="String" />
            <asp:Parameter Name="CustomerAddress" Type="String" />
            <asp:Parameter Name="PAN" Type="String" />
            <asp:Parameter Name="DOB" Type="DateTime" />
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="AccountType" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="CustomerName" Type="String" />
            <asp:Parameter Name="CustomerAddress" Type="String" />
            <asp:Parameter Name="PAN" Type="String" />
            <asp:Parameter Name="DOB" Type="DateTime" />
            <asp:Parameter Name="Password" Type="String" />
            <asp:Parameter Name="AccountType" Type="String" />
            <asp:Parameter Name="original_CID" Type="Int32" />
            <asp:Parameter Name="original_CustomerName" Type="String" />
            <asp:Parameter Name="original_CustomerAddress" Type="String" />
            <asp:Parameter Name="original_PAN" Type="String" />
            <asp:Parameter Name="original_DOB" Type="DateTime" />
            <asp:Parameter Name="original_Password" Type="String" />
            <asp:Parameter Name="original_AccountType" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" CssClass="auto-style28" DataKeyNames="CID" DataSourceID="SqlDataSource1" Style="text-align: center; text-decoration: none" ForeColor="#333333" GridLines="None" Width="1173px" AllowPaging="True">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="CID" HeaderText="CID" InsertVisible="False" ReadOnly="True" SortExpression="CID" />
            <asp:BoundField DataField="CustomerName" HeaderText="CustomerName" SortExpression="CustomerName" />
            <asp:BoundField DataField="CustomerAddress" HeaderText="CustomerAddress" SortExpression="CustomerAddress" />
            <asp:BoundField DataField="PAN" HeaderText="PAN" SortExpression="PAN" />
            <asp:BoundField DataField="DOB" HeaderText="DOB" SortExpression="DOB" />
            <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
            <asp:BoundField DataField="AccountType" HeaderText="AccountType" SortExpression="AccountType" />
            <asp:CommandField ShowEditButton="True" ItemStyle-CssClass="no-decoration" HeaderText="Actions" >
<ItemStyle CssClass="no-decoration"></ItemStyle>
            </asp:CommandField>
            <asp:HyperLinkField ControlStyle-CssClass="cls" DataNavigateUrlFields="CID,CustomerName,CustomerAddress,PAN,AccountType" DataNavigateUrlFormatString="Details.aspx?id={0}&amp;name={1}&amp;add={2}&amp;pan={3}&amp;at={4}" Text="Details" >
<ControlStyle CssClass="cls"></ControlStyle>
            </asp:HyperLinkField>
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <br />
</asp:Content>
