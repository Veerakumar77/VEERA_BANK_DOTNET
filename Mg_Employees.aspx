<%@ Page Title="" Language="C#" MasterPageFile="~/ManagerDashboard.Master" AutoEventWireup="true" CodeBehind="Mg_Employees.aspx.cs" Inherits="YourBank.Mg_Employees" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style28 {
            margin-left: 53px;
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
            right: 1531px;
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
        <asp:HyperLink ID="HyperLink8" runat="server" BackColor="#1191EE" CssClass="auto-style29" ForeColor="White" Font-Bold="True" NavigateUrl="~/CreateEmployees.aspx">Create Employee</asp:HyperLink>
    </p>
    <p>
        &nbsp;</p>
    <p>
        <br />
        <asp:GridView ID="GridView1" runat="server" style="text-align: center; text-decoration: none" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" CssClass="auto-style28" DataKeyNames="EID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="1203px">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                
                <asp:BoundField DataField="EID" HeaderText="EID" InsertVisible="False" ReadOnly="True" SortExpression="EID" />
                <asp:BoundField DataField="EmployeeName" HeaderText="EmployeeName" SortExpression="EmployeeName" />
                <asp:BoundField DataField="DeptId" HeaderText="DeptId" SortExpression="DeptId" />
                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                <asp:BoundField DataField="PAN" HeaderText="PAN" SortExpression="PAN" />
                <asp:CommandField ShowEditButton="True" ShowDeleteButton="true" ItemStyle-CssClass="no-decoration" HeaderText="Actions" />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:BankPrjConnectionString %>" DeleteCommand="DELETE FROM [Employee] WHERE [EID] = @original_EID AND (([EmployeeName] = @original_EmployeeName) OR ([EmployeeName] IS NULL AND @original_EmployeeName IS NULL)) AND [DeptId] = @original_DeptId AND (([Password] = @original_Password) OR ([Password] IS NULL AND @original_Password IS NULL)) AND (([PAN] = @original_PAN) OR ([PAN] IS NULL AND @original_PAN IS NULL))" InsertCommand="INSERT INTO [Employee] ([EmployeeName], [DeptId], [Password], [PAN]) VALUES (@EmployeeName, @DeptId, @Password, @PAN)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Employee]" UpdateCommand="UPDATE [Employee] SET [EmployeeName] = @EmployeeName, [DeptId] = @DeptId, [Password] = @Password, [PAN] = @PAN WHERE [EID] = @original_EID AND (([EmployeeName] = @original_EmployeeName) OR ([EmployeeName] IS NULL AND @original_EmployeeName IS NULL)) AND [DeptId] = @original_DeptId AND (([Password] = @original_Password) OR ([Password] IS NULL AND @original_Password IS NULL)) AND (([PAN] = @original_PAN) OR ([PAN] IS NULL AND @original_PAN IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_EID" Type="Int32" />
                <asp:Parameter Name="original_EmployeeName" Type="String" />
                <asp:Parameter Name="original_DeptId" Type="Int32" />
                <asp:Parameter Name="original_Password" Type="String" />
                <asp:Parameter Name="original_PAN" Type="String" />
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
                <asp:Parameter Name="original_EID" Type="Int32" />
                <asp:Parameter Name="original_EmployeeName" Type="String" />
                <asp:Parameter Name="original_DeptId" Type="Int32" />
                <asp:Parameter Name="original_Password" Type="String" />
                <asp:Parameter Name="original_PAN" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
</asp:Content>
