<%@ Page Title="" Language="C#" MasterPageFile="~/ManagerDashboard.Master" AutoEventWireup="true" CodeBehind="EmployeesDt.aspx.cs" Inherits="YourBank.EmployeesDt" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style28 {
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
        .auto-style29 {
           margin-left: 53px;
            margin-right: 0px;
        }
        
        .no-decoration a {
            text-decoration: none;
            color:blue;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        &nbsp;</p>
    <p>
        <asp:HyperLink ID="HyperLink8" runat="server" BackColor="#1191EE" CssClass="auto-style28" Font-Bold="True" ForeColor="White" NavigateUrl="~/CreateEmployees.aspx">Create Employee</asp:HyperLink>
    </p>
<p>
        &nbsp;</p>
    <p>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BankPrjConnectionString %>" DeleteCommand="DELETE FROM [Employee] WHERE [EID] = @EID" InsertCommand="INSERT INTO [Employee] ([EmployeeName], [DeptId], [Password], [PAN]) VALUES (@EmployeeName, @DeptId, @Password, @PAN)" SelectCommand="SELECT * FROM [Employee]" UpdateCommand="UPDATE [Employee] SET [EmployeeName] = @EmployeeName, [DeptId] = @DeptId, [Password] = @Password, [PAN] = @PAN WHERE [EID] = @EID">
            <DeleteParameters>
                <asp:Parameter Name="EID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="EmployeeName" Type="String" />
                <asp:Parameter Name="DeptId" Type="Int32" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="PAN" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="EmployeeName" Type="String" />
                <asp:Parameter Name="DeptId" Type="Int32" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="PAN" Type="String" />
                <asp:Parameter Name="EID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="EID" DataSourceID="SqlDataSource1" Style="text-align: center; text-decoration: none" ForeColor="#333333" GridLines="None" CssClass="auto-style29" Width="1284px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="EID" HeaderText="EID" InsertVisible="False" ReadOnly="True" SortExpression="EID" />
                <asp:BoundField DataField="EmployeeName" HeaderText="EmployeeName" SortExpression="EmployeeName" />
                <asp:BoundField DataField="DeptId" HeaderText="DeptId" SortExpression="DeptId" />
                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                <asp:BoundField DataField="PAN" HeaderText="PAN" SortExpression="PAN" />
                <asp:CommandField ShowEditButton="True" ItemStyle-CssClass="no-decoration" HeaderText="Actions" />
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
    </p>
    <p>
    </p>
</asp:Content>
