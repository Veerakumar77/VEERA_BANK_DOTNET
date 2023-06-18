<%@ Page Title="" Language="C#" MasterPageFile="~/ManagerDashboard.Master" AutoEventWireup="true" CodeBehind="PANValidate.aspx.cs" Inherits="YourBank.PANValidate" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style28 {
             width: 1021px;
            height: 665px;
        }
        .auto-style29 {
            position: absolute;
            top: 350px;
            left: 1154px;
            z-index: 1;
            text-align:center;
            width: 231px;
        }
        .auto-style30 {
            position: absolute;
            top: 402px;
            left: 1125px;
            z-index: 1;
             width: 285px;
             height: 25px;
            bottom: 597px;
        }
        .auto-style31 {
            position: absolute;
            top: 407px;
            left: 864px;
            z-index: 1;
        }
        .auto-style33 {
            position: absolute;
            top: 459px;
            left: 1125px;
            z-index: 1;
            width: 287px;
            height: 31px;
        }
        .auto-style34 {
            position: absolute;
            top: 543px;
            left: 1128px;
            z-index: 1;
            width: 285px;
            height: 25px;
            text-align:center;
        }
        .auto-style35 {
            width: 309px;
            height: 63px;
            position: absolute;
            top: 599px;
            left: 1111px;
            z-index: 1;
        }
        .auto-style41{
            height: 664px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p style="background-color: #e0f1ff" class="auto-style41">
        <img alt="esr" class="auto-style28" src="Images/photo-1529539795054-3c162aab037a.jpg" /><asp:Label ID="Label1" runat="server" CssClass="auto-style29" Text="Enter your PAN"></asp:Label>
        <asp:TextBox ID="TextBox1" MaxLength="12" MinLength="10" runat="server" CssClass="auto-style30"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" CssClass="auto-style31" ErrorMessage="PAN is Required " Display="None"></asp:RequiredFieldValidator>
        <asp:Button ID="Button1" runat="server" BackColor="#1FA2E0" CssClass="auto-style33" Text="Submit" OnClick="Button1_Click" />
        <asp:Label ID="Label2" runat="server" CssClass="auto-style34"></asp:Label>
    </p>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="auto-style35" ForeColor="Red" />
</asp:Content>
