<%@ Page Title="" Language="C#" MasterPageFile="~/ManagerDashboard.Master" AutoEventWireup="true" CodeBehind="Transfers.aspx.cs" Inherits="YourBank.Transfers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style28 {
            margin-left: 53px;
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
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        <asp:HyperLink ID="HyperLink8" runat="server" CssClass="auto-style29" BackColor="#005900" Font-Bold="True" ForeColor="White" NavigateUrl="~/Transactions.aspx">Transactions</asp:HyperLink>
    </p>
    <p>
        &nbsp;</p>
<p>
        &nbsp;</p>
    <p>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BankPrjConnectionString %>" SelectCommand="SELECT * FROM [Transactions] WHERE ([CID] = @CID)">
            <SelectParameters>
                <asp:SessionParameter DefaultValue="null" Name="CID" SessionField="cid" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </p>
    <p>
        <asp:GridView ID="GridView1" Style="text-align: center; text-decoration: none" runat="server" AutoGenerateColumns="False" CellPadding="4" CssClass="auto-style28" DataKeyNames="TransID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="1225px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="TransID" HeaderText="TransID" InsertVisible="False" ReadOnly="True" SortExpression="TransID" />
                <asp:BoundField DataField="CID" HeaderText="CID" SortExpression="CID" />
                <asp:BoundField DataField="AID" HeaderText="AID" SortExpression="AID" />
                <asp:BoundField DataField="TransactionsType" HeaderText="TransactionsType" SortExpression="TransactionsType" />
                <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                <asp:BoundField DataField="PreviousBalance" HeaderText="PreviousBalance" SortExpression="PreviousBalance" />
                <asp:BoundField DataField="CurrentBalance" HeaderText="CurrentBalance" SortExpression="CurrentBalance" />
            </Columns>
            <EditRowStyle BackColor="#7C6F57" />
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#E3EAEB" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F8FAFA" />
            <SortedAscendingHeaderStyle BackColor="#246B61" />
            <SortedDescendingCellStyle BackColor="#D4DFE1" />
            <SortedDescendingHeaderStyle BackColor="#15524A" />
        </asp:GridView>
    </p>
</asp:Content>
