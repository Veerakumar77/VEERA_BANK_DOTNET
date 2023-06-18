<%@ Page Title="" Language="C#" MasterPageFile="~/ManagerDashboard.Master" AutoEventWireup="true" CodeBehind="AccountResponse.aspx.cs" Inherits="YourBank.AccountResponse" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style28 {
            width: 1000px;
            height: 667px;
        }
        .auto-style29 {
            position: absolute;
            top: 367px;
            left: 1153px;
            z-index: 1;
            text-align: center;
            width: 231px;
            padding:10px;
        }
        .auto-style30 {
            position: absolute;
            top: 439px;
            left: 1153px;
            z-index: 1;
            text-align: center;
            width: 231px;
            height: 20px;
            bottom: 518px;
            padding:10px;
        }
        .auto-style31 {
            position: absolute;
            top: 495px;
            left: 1153px;
            z-index: 1;
            text-align: center;
            width: 231px;
            height: 20px;
            bottom: 442px;
            padding:10px;
        }
        .auto-style32 {
            position: absolute;
            top: 573px;
            left: 1153px;
            z-index: 1;
            text-align: center;
            width: 231px;
            height: 20px;
            bottom: 364px;
            padding:10px;
        }
        .auto-style33 {
            position: absolute;
            top: 629px;
            left: 1153px;
            z-index: 1;
            text-align: center;
            width: 231px;
            height: 20px;
            bottom: 442px;
            padding:10px;
        }
        .auto-style34 {
            position: absolute;
            top: 701px;
            left: 1153px;
            z-index: 1;
            text-align: center;
            width: 231px;
            height: 20px;
            bottom: 442px;
            padding:10px;
        }
        .auto-style35 {
            position: absolute;
            top: 757px;
            left: 1153px;
            z-index: 1;
            text-align: center;
            width: 231px;
            height: 20px;
            bottom: 442px;
            padding:10px;
        }
        .auto-style36 {
            position: absolute;
            top: 850px;
             left: 1153px;
            z-index: 1;
            text-align: center;
            width: 231px;
            height: 20px;
            bottom: 442px;
            padding:10px;
            text-decoration:none;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p style="background-color: #e0f1ff">
        <img alt="dsf" class="auto-style28" src="Images/photo-1529539795054-3c162aab037a.jpg" /><asp:Label ID="Label1" runat="server" CssClass="auto-style29" BackColor="#33CC33" Font-Bold="True" ForeColor="White"></asp:Label>
        <asp:Label ID="Label2" runat="server" CssClass="auto-style30" Text="Customer Id" BackColor="#0066FF"></asp:Label>
        <asp:Label ID="Label3" runat="server" CssClass="auto-style31" BackColor="#64D9FF"></asp:Label>
        <asp:Label ID="Label4" runat="server" CssClass="auto-style32" Text="Your Account Number" BackColor="#0066FF"></asp:Label>
        <asp:Label ID="Label5" runat="server" CssClass="auto-style33" BackColor="#64D9FF"></asp:Label>
        <asp:Label ID="Label6" runat="server" CssClass="auto-style34" Text="Your Password" BackColor="#0066FF"></asp:Label>
        <asp:Label ID="Label7" runat="server" CssClass="auto-style35" BackColor="#64D9FF"></asp:Label>
        <asp:HyperLink ID="HyperLink8" runat="server" CssClass="auto-style36" BackColor="Red" Font-Bold="True" ForeColor="White" NavigateUrl="~/RegisterAccount.aspx">Register Customer</asp:HyperLink>
    </p>
</asp:Content>
