<%@ Page Title="" Language="C#" MasterPageFile="~/CustomersDasboard.Master" AutoEventWireup="true" CodeBehind="MoneyTransfers.aspx.cs" Inherits="YourBank.MoneyTransfers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style11 {
            margin-top: 30px;
            width: 1021px;
            height: 640px;
            margin-left: 30px;
        }

        .auto-style12 {
            width: 1520px;
            height: 700px;
        }

        .auto-style13 {
            position: absolute;
            top: 400px;
            left: 1148px;
            z-index: 1;
            text-align: center;
            width: 250px;
            height: 35px;
            padding-top:10px;
        }

        .auto-style14 {
            position: absolute;
            top: 474px;
            left: 1148px;
            z-index: 1;
            width: 250px;
            height: 30px;
            bottom: 531px;
        }

        .auto-style15 {
            position: absolute;
            top: 535px;
            left: 1148px;
            z-index: 1;
            width: 250px;
            height: 30px;
            bottom: 531px;
        }

        .auto-style16 {
            position: absolute;
            top: 598px;
            left: 1148px;
            z-index: 1;
            width: 250px;
            height: 30px;
            bottom: 407px;
        }

        .auto-style17 {
            position: absolute;
            top: 668px;
            left: 1307px;
            z-index: 1;
            width: 100px;
            height: 30px;
            bottom: 343px;
        }

        .auto-style18 {
            position: absolute;
            top: 473px;
            left: 872px;
            z-index: 1;
        }

        .auto-style19 {
            position: absolute;
            top: 538px;
            left: 882px;
            z-index: 1;
        }

        .auto-style20 {
            position: absolute;
            top: 597px;
            left: 875px;
            z-index: 1;
        }

        .auto-style21 {
            position: absolute;
            top: 498px;
            left: 852px;
            z-index: 1;
        }

        .auto-style22 {
            position: absolute;
            top: 565px;
            left: 848px;
            z-index: 1;
        }
        .auto-style23 {
            width: 316px;
            height: 63px;
            position: absolute;
            top: 777px;
            left: 1122px;
            z-index: 1;
        }
        .auto-style24 {
            position: absolute;
            top: 721px;
           left: 1148px;
            z-index: 1;
            width: 250px;
            height: 30px;
            bottom: 531px;
            text-align:center;
        }
        .auto-style25 {
            position: absolute;
            top: 670px;
            left: 1152px;
            z-index: 1;
            width: 102px;
            height: 26px;
            text-align:center;
            text-decoration:none;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p style="background-color: #00B0B0" class="auto-style12">
        <img alt="ds" class="auto-style11" src="Images/send-money-to-nigeria.jpg" /><asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox2" CssClass="auto-style22" ErrorMessage="Please enter Valid Amount" ValidationExpression="^\d+(\.\d{1,2})?$" Display="None"></asp:RegularExpressionValidator>
        <asp:Label ID="Label1" runat="server" CssClass="auto-style13" Text="Money Transfer" Font-Bold="True" ForeColor="White" BackColor="#1C5566"></asp:Label>
        <asp:TextBox ID="TextBox1" placeholder="Enter Account Number" runat="server" CssClass="auto-style14"></asp:TextBox>
        <asp:TextBox ID="TextBox2" placeholder="Enter Amount" runat="server" CssClass="auto-style15"></asp:TextBox>
        <asp:TextBox ID="TextBox3" placeholder="Enter your Password" runat="server" CssClass="auto-style16" TextMode="Password"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" BackColor="#1C5566" CssClass="auto-style17" Font-Bold="True" ForeColor="White" Text="Submit" OnClick="Button1_Click" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" CssClass="auto-style18" ErrorMessage="Account Number is Required" Display="None"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" CssClass="auto-style19" ErrorMessage="Amount is Required" Display="None"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" CssClass="auto-style20" ErrorMessage="Password is Required" Display="None"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" CssClass="auto-style21" ErrorMessage="Please Enter Valid Account Number" ValidationExpression="^\d+(\.\d{1,2})?$" Display="None"></asp:RegularExpressionValidator>
        <asp:Label ID="Label2" runat="server" CssClass="auto-style24"></asp:Label>
        <asp:HyperLink ID="HyperLink5" runat="server" BackColor="#1C5566" CssClass="auto-style25" Font-Bold="True" ForeColor="White" NavigateUrl="~/Transfers.aspx">Back</asp:HyperLink>
    </p>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="auto-style23" ForeColor="Red" Width="316px" />
</asp:Content>
