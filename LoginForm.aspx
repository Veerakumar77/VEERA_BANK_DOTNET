<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginForm.aspx.cs" Inherits="YourBank.LoginForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 1100px;
            height: 717px;
            margin-top: 120px;
            margin-left: 30px;
        }
        .auto-style2 {
            position: absolute;
            top: 93px;
            left: 1221px;
            z-index: 1;
            width: 231px;
            height: 31px;
            text-align:center;
        }
        .auto-style3 {
            position: absolute;
            top: 151px;
            left: 1195px;
            z-index: 1;
            width: 285px;
            height: 25px;
        }
        .auto-style4 {
            position: absolute;
            top: 214px;
            left: 1195px;
            z-index: 1;
            height: 25px;
            width: 285px;
            right: 362px;
        }
        .auto-style5 {
            position: absolute;
            top: 355px;
            left: 1389px;
            z-index: 1;
            height: 30px;
            width: 100px;
            bottom: 379px;
            background-color: #b9d4eb;
        }
        .auto-style7 {
            position: absolute;
            top: 279px;
            left: 1193px;
            z-index: 1;
            height: 26px;
            width: 108px;
        }
        .auto-style8 {
            position: absolute;
            top: 280px;
            left: 1296px;
            z-index: 1;
            height: 27px;
            width: 117px;
            margin-bottom: 0px;
        }
        .auto-style9 {
            position: absolute;
            top: 279px;
            left: 1409px;
            z-index: 1;
            height: 23px;
            width: 105px;
            right: 336px;
        }
        .auto-style10 {
            position: absolute;
            top: 219px;
            left: 982px;
            z-index: 1;
        }
        .auto-style11 {
            position: absolute;
            top: 156px;
            left: 974px;
            z-index: 1;
        }
        .auto-style12 {
            width: 301px;
            height: 64px;
            position: absolute;
            top: 419px;
            left: 1186px;
            z-index: 1;
        }
        .auto-style13 {
            position: absolute;
            top: 315px;
            left: 1236px;
            z-index: 1;
            height: 27px;
            width: 229px;
            text-align:center;
        }
        .auto-style14 {
            position: absolute;
            top: 49px;
            left: 43px;
            z-index: 1;
            width: 1092px;
            height: 41px;
            text-align:center;
            padding-top:10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <p style="background-color:#e0f1ff">
        <asp:Label ID="Label3" runat="server" CssClass="auto-style14" Text="PFT BANK" BackColor="#00CCFF" Font-Bold="True" Font-Size="Larger" ForeColor="White"></asp:Label>
        <img alt="vbn" class="auto-style1" src="Images/bank-website-design.jpg" /><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" CssClass="auto-style11" Display="None" ErrorMessage="User Name is Required"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" CssClass="auto-style10" Display="None" ErrorMessage="Password is Required"></asp:RequiredFieldValidator>
&nbsp;
        <asp:Label ID="Label1" runat="server" CssClass="auto-style2" Text="Login Form"></asp:Label>
        <asp:TextBox ID="TextBox1" placeholder="Enter UserName" runat="server" CssClass="auto-style3"></asp:TextBox>
        <asp:TextBox ID="TextBox2" placeholder="Enter Password" runat="server" CssClass="auto-style4" TextMode="Password"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" CssClass="auto-style5" Text="Login" OnClick="Button1_Click1" BackColor="#00CC00" Font-Bold="True" ForeColor="White" />
        <asp:RadioButton ID="RadioButton1" runat="server" CssClass="auto-style7" GroupName="UserType" Text="Customer" />
        <asp:RadioButton ID="RadioButton2" runat="server" CssClass="auto-style8" GroupName="UserType" Text="Employee" />
        <asp:RadioButton ID="RadioButton3" runat="server" CssClass="auto-style9" GroupName="UserType" Text="Manager" />
        <asp:Label ID="Label2" runat="server" CssClass="auto-style13"></asp:Label>
    </p>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="auto-style12" ForeColor="Red" />
    </form>
</body>
</html>
