<%@ Page Title="" Language="C#" MasterPageFile="~/ManagerDashboard.Master" AutoEventWireup="true" CodeBehind="ALLUsers.aspx.cs" Inherits="YourBank.ALLUsers" %>
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
        <asp:HyperLink ID="HyperLink8" runat="server" BackColor="#992600" CssClass="auto-style29" NavigateUrl="~/RegisterAccount.aspx" style="z-index: 1" Font-Bold="True" ForeColor="White">Create User</asp:HyperLink>
    </p>
    <p>
        &nbsp;</p>
<p>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:BankPrjConnectionString %>" DeleteCommand="DELETE FROM [Users] WHERE [Id] = @original_Id AND (([UName] = @original_UName) OR ([UName] IS NULL AND @original_UName IS NULL)) AND (([Address] = @original_Address) OR ([Address] IS NULL AND @original_Address IS NULL)) AND (([UserName] = @original_UserName) OR ([UserName] IS NULL AND @original_UserName IS NULL)) AND (([Password] = @original_Password) OR ([Password] IS NULL AND @original_Password IS NULL)) AND [UserType] = @original_UserType AND (([PAN] = @original_PAN) OR ([PAN] IS NULL AND @original_PAN IS NULL))" InsertCommand="INSERT INTO [Users] ([UName], [Address], [UserName], [Password], [UserType], [PAN]) VALUES (@UName, @Address, @UserName, @Password, @UserType, @PAN)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Users]" UpdateCommand="UPDATE [Users] SET [UName] = @UName, [Address] = @Address, [UserName] = @UserName, [Password] = @Password, [UserType] = @UserType, [PAN] = @PAN WHERE [Id] = @original_Id AND (([UName] = @original_UName) OR ([UName] IS NULL AND @original_UName IS NULL)) AND (([Address] = @original_Address) OR ([Address] IS NULL AND @original_Address IS NULL)) AND (([UserName] = @original_UserName) OR ([UserName] IS NULL AND @original_UserName IS NULL)) AND (([Password] = @original_Password) OR ([Password] IS NULL AND @original_Password IS NULL)) AND [UserType] = @original_UserType AND (([PAN] = @original_PAN) OR ([PAN] IS NULL AND @original_PAN IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_Id" Type="Int32" />
                <asp:Parameter Name="original_UName" Type="String" />
                <asp:Parameter Name="original_Address" Type="String" />
                <asp:Parameter Name="original_UserName" Type="String" />
                <asp:Parameter Name="original_Password" Type="String" />
                <asp:Parameter Name="original_UserType" Type="String" />
                <asp:Parameter Name="original_PAN" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="UName" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="UserName" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="UserType" Type="String" />
                <asp:Parameter Name="PAN" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="UName" Type="String" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="UserName" Type="String" />
                <asp:Parameter Name="Password" Type="String" />
                <asp:Parameter Name="UserType" Type="String" />
                <asp:Parameter Name="PAN" Type="String" />
                <asp:Parameter Name="original_Id" Type="Int32" />
                <asp:Parameter Name="original_UName" Type="String" />
                <asp:Parameter Name="original_Address" Type="String" />
                <asp:Parameter Name="original_UserName" Type="String" />
                <asp:Parameter Name="original_Password" Type="String" />
                <asp:Parameter Name="original_UserType" Type="String" />
                <asp:Parameter Name="original_PAN" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" style="text-align: center; text-decoration: none" AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" CssClass="auto-style28" DataKeyNames="Id" DataSourceID="SqlDataSource1" Width="1258px">
            <Columns>
                
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="UName" HeaderText="UName" SortExpression="UName" />
                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                <asp:BoundField DataField="UserName" HeaderText="UserName" SortExpression="UserName" />
                <asp:BoundField DataField="Password" HeaderText="Password" SortExpression="Password" />
                <asp:BoundField DataField="UserType" HeaderText="UserType" SortExpression="UserType" />
                <asp:BoundField DataField="PAN" HeaderText="PAN" SortExpression="PAN" />
                <asp:CommandField ShowEditButton="True" ShowDeleteButton="true" ItemStyle-CssClass="no-decoration" HeaderText="Actions" />
            </Columns>
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#330099" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <SortedAscendingCellStyle BackColor="#FEFCEB" />
            <SortedAscendingHeaderStyle BackColor="#AF0101" />
            <SortedDescendingCellStyle BackColor="#F6F0C0" />
            <SortedDescendingHeaderStyle BackColor="#7E0000" />
        </asp:GridView>
    </p>
</asp:Content>
