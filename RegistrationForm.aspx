<%@ Page Language="C#"  AutoEventWireup="true" CodeBehind="RegistrationForm.aspx.cs" Inherits="YourBank.RegistrationForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 1150px;
            height: 717px;
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
            top: 277px;
            left: 1195px;
            z-index: 1;
            height: 25px;
            width: 285px;
        }
        .auto-style6 {
            position: absolute;
            top: 344px;
            left: 1195px;
            z-index: 1;
            height: 25px;
            width: 285px;
        }
        .auto-style7 {
            position: absolute;
            top: 413px;
            left: 1195px;
            z-index: 1;
            height: 25px;
            width: 285px;
        }
        .auto-style8 {
            position: absolute;
            top: 470px;
            left: 1193px;
            z-index: 1;
        }
        .auto-style9 {
            position: absolute;
            top: 470px;
            left: 1296px;
            z-index: 1;
        }
        .auto-style10 {
            position: absolute;
            top: 470px;
            left: 1399px;
            z-index: 1;
        }
        .auto-style11 {
            position: absolute;
            top: 510px;
            left: 1198px;
            z-index: 1;
            text-decoration:none;
            width: 73px;
            text-align:center;
        }
        .auto-style12 {
            position: absolute;
            top: 509px;
            left: 1401px;
            z-index: 1;
            height: 23px;
            width: 81px;
            background-color: #b9d4eb;
            
        }
        .auto-style13 {
            position: absolute;
            top: 133px;
            left: 967px;
            z-index: 1;
        }
        .auto-style14 {
            position: absolute;
            top: 152px;
            left: 912px;
            z-index: 1;
        }
        .auto-style15 {
            position: absolute;
            top: 217px;
            left: 944px;
            z-index: 1;
            height: 23px;
        }
        .auto-style16 {
            position: absolute;
            top: 261px;
            left: 979px;
            z-index: 1;
        }
        .auto-style18 {
            position: absolute;
            top: 326px;
            left: 964px;
            z-index: 1;
        }
        .auto-style20 {
            position: absolute;
            top: 427px;
            left: 922px;
            z-index: 1;
        }
        .auto-style21 {
            position: absolute;
            top: 451px;
            left: 877px;
            z-index: 1;
        }
        .auto-style22 {
            width: 376px;
            height: 173px;
            position: absolute;
            top: 585px;
            left: 1167px;
            z-index: 1;
            right: -136px;
        }
        .auto-style23 {
            position: absolute;
            top: 554px;
            left: 1198px;
            z-index: 1;
            width: 283px;
            text-align:center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="background-color: #e0f1ff">
            <img alt="kjdn" class="auto-style1" src="Images/bank-website-design.jpg" /><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" CssClass="auto-style15" Display="None" ErrorMessage="Address is Required"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" CssClass="auto-style16" Display="None" ErrorMessage="PAN is Required"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" CssClass="auto-style13" Display="None" ErrorMessage="User Name is Required"></asp:RequiredFieldValidator>
            <asp:Label ID="Label1" runat="server" CssClass="auto-style2" Text="Registration"></asp:Label>
            <asp:TextBox ID="TextBox1" placeholder="Enter UserName" runat="server" CssClass="auto-style3"></asp:TextBox>
            <asp:TextBox ID="TextBox2"  placeholder="Enter Address" runat="server" CssClass="auto-style4"></asp:TextBox>
            <asp:TextBox ID="TextBox3"  placeholder="Enter your PAN" runat="server" CssClass="auto-style5"></asp:TextBox>
            <asp:TextBox ID="TextBox4" runat="server"  placeholder="Create Password" CssClass="auto-style6" TextMode="Password"></asp:TextBox>
            <asp:RadioButton ID="RadioButton1" runat="server"   CssClass="auto-style8" GroupName="UserType" Text="Customer" />
            <asp:TextBox ID="TextBox5" runat="server" placeholder="Confirm Password" CssClass="auto-style7" TextMode="Password"></asp:TextBox>
            <asp:RadioButton ID="RadioButton2" runat="server" CssClass="auto-style9" GroupName="UserType" Text="Employee" />
            <asp:RadioButton ID="RadioButton3" runat="server" CssClass="auto-style10" GroupName="UserType" Text="Manager" />
            <asp:HyperLink ID="HyperLink1" runat="server" CssClass="auto-style11" NavigateUrl="~/LoginForm.aspx" BackColor="#B9D4EB" BorderColor="#666666" ForeColor="Black">Sign In</asp:HyperLink>
            <asp:Button ID="Button1" runat="server" CssClass="auto-style12" Text="Sign Up" OnClick="Button1_Click" />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" CssClass="auto-style14" Display="None" ErrorMessage="Please Enter Valid UserName" ValidationExpression="^[a-zA-Z]+$"></asp:RegularExpressionValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" CssClass="auto-style18" Display="None" ErrorMessage="Password is Required"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox4" ControlToValidate="TextBox5" CssClass="auto-style20" Display="None" ErrorMessage="Password does not matched!"></asp:CompareValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" CssClass="auto-style21" Display="None" ErrorMessage="Confirm Password is Required"></asp:RequiredFieldValidator>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="auto-style22" ForeColor="Red" />
            <asp:Label ID="Label2" runat="server" CssClass="auto-style23"></asp:Label>
        </div>
    </form>
</body>
</html>
