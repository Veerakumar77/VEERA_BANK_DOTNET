<%@ Page Title="" Language="C#" MasterPageFile="~/ManagerDashboard.Master" AutoEventWireup="true" CodeBehind="CloseAccount.aspx.cs" Inherits="YourBank.CloseAccount" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style28 {
            height: 768px;
            width: 1021px;
            margin-top: 30px;
            margin-left: 30px;
        }
        .auto-style29 {
            position: absolute;
            top: 392px;
            left: 1149px;
            z-index: 1;
            height: 34px;
            width:250px;
            text-align:center;
            padding-top:10px;
        }
        .auto-style30 {
            position: absolute;
            top: 485px;
            left: 1148px;
            z-index: 1;
            width: 250px;
            height: 30px;
            bottom: 531px;
        }
        .auto-style31 {
            position: absolute;
            top: 548px;
            left: 1291px;
            z-index: 1;
            height: 37px;
            width: 112px;
        }
        .auto-style32 {
            position: absolute;
            top: 481px;
            left: 894px;
            z-index: 1;
        }
        .auto-style33 {
            position: absolute;
            top: 511px;
            left: 865px;
            z-index: 1;
        }
        .auto-style34 {
            width: 292px;
            height: 44px;
            position: absolute;
            top: 658px;
            left: 1134px;
            z-index: 1;
        }
        .auto-style35 {
            position: absolute;
            top: 600px;
            left: 1149px;
            z-index: 1;
            height: 34px;
            width:250px;
            text-align:center;
            padding-top:10px;
        }
        .auto-style36 {
            position: absolute;
            top: 551px;
            left: 1152px;
            z-index: 1;
            width: 100px;
            height: 29px;
            text-align:center;
            text-decoration:none;
            padding-top:5px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p style="background-color: #FFFFCC">
        <img alt="fs" class="auto-style28" src="Images/XyqeJp.jpg" /><asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" CssClass="auto-style33" ErrorMessage="Please enter Valid Account Number" ValidationExpression="^\d+(\.\d{1,2})?$" Display="None"></asp:RegularExpressionValidator>
        <asp:Label ID="Label1" runat="server" BackColor="Red" CssClass="auto-style29" Font-Bold="True" ForeColor="White" Text="Close Account"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style30"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" BackColor="#33CC33" CssClass="auto-style31" Font-Bold="True" ForeColor="White" Text="Submit" OnClick="Button1_Click" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" CssClass="auto-style32" ErrorMessage="Please enter Account Number" Display="None"></asp:RequiredFieldValidator>
        <asp:Label ID="Label2" runat="server" Font-Bold="True"  CssClass="auto-style35"></asp:Label>
        <asp:HyperLink ID="HyperLink8" runat="server" BackColor="Red" CssClass="auto-style36" Font-Bold="True" ForeColor="White" NavigateUrl="~/CustomersDt.aspx">Back</asp:HyperLink>
    </p>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="auto-style34" ForeColor="Red" />
</asp:Content>
