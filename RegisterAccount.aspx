<%@ Page Title="" Language="C#" MasterPageFile="~/ManagerDashboard.Master" AutoEventWireup="true" CodeBehind="RegisterAccount.aspx.cs" Inherits="YourBank.RegisterAccount" %>
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
            bottom: 514px;
        }
        .auto-style31 {
            position: absolute;
            top: 458px;
            left: 1125px;
            z-index: 1;
            width: 285px;
             height: 25px;
        }
        .auto-style32 {
            position: absolute;
            top: 514px;
            left: 1125px;
            z-index: 1;
             width: 285px;
             height: 25px;
        }
        .auto-style33 {
            position: absolute;
            top: 570px;
            left: 1125px;
            z-index: 1;
             width: 285px;
             height: 25px;
        }
        .auto-style34 {
            position: absolute;
            top: 626px;
            left: 1125px;
            z-index: 1;
             width: 285px;
             height: 25px;
        }
        .auto-style35 {
            position: absolute;
            top: 682px;
            left: 1128px;
            z-index: 1;
        }
        .auto-style36 {
            position: absolute;
            top: 682px;
            left: 1230px;
            z-index: 1;
        }
        .auto-style37 {
            position: absolute;
            top: 682px;
            left: 1334px;
            z-index: 1;
        }
        .auto-style38 {
            position: absolute;
            top: 729px;
            left: 1317px;
            z-index: 1;
            height: 31px;
            width: 100px;
            background-color: #b9d4eb;
        }
        .auto-style40 {
            position: absolute;
            top: 794px;
            left: 1128px;
            z-index: 1;
            width: 285px;
            height: 25px;
            text-align:center;
        }
        .auto-style41 {
            height: 664px;
        }
        .auto-style42 {
            position: absolute;
            top: 446px;
            left: 871px;
            z-index: 1;
        }
        .auto-style43 {
            position: absolute;
            top: 500px;
            left: 857px;
            z-index: 1;
        }
        .auto-style44 {
            position: absolute;
            top: 548px;
            left: 854px;
            z-index: 1;
        }
        .auto-style45 {
            position: absolute;
            top: 597px;
            left: 859px;
            z-index: 1;
        }
        .auto-style46 {
            position: absolute;
            top: 665px;
            left: 870px;
            z-index: 1;
            height: 29px;
        }
        .auto-style47 {
            position: absolute;
            top: 466px;
            left: 866px;
            z-index: 1;
        }
        .auto-style48 {
            position: absolute;
            top: 688px;
            left: 883px;
            z-index: 1;
        }
        .auto-style49 {
            width: 297px;
            height: 44px;
            position: absolute;
            top: 847px;
            left: 1095px;
            z-index: 1;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style41" style="background-color: #e0f1ff">
        <img alt="ad" class="auto-style28" src="Images/bank-website-design.jpg" />
        <asp:Label ID="Label1" runat="server" CssClass="auto-style29" Text="Registration"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter UserName" CssClass="auto-style30"></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server" placeholder="Enter Address" CssClass="auto-style31"></asp:TextBox>
        <asp:TextBox ID="TextBox3" runat="server" MaxLength="12" MinLength="10" placeholder="Enter your PAN" CssClass="auto-style32"></asp:TextBox>
        <asp:TextBox ID="TextBox4" runat="server" MinLength="6" placeholder="Enter Password" CssClass="auto-style33" TextMode="Password"></asp:TextBox>
        <asp:TextBox ID="TextBox5" runat="server" placeholder="Confirm Password" CssClass="auto-style34" TextMode="Password"></asp:TextBox>
        <asp:RadioButton ID="RadioButton1" runat="server" CssClass="auto-style35" Text="Customer" GroupName="UserType" />
        <asp:RadioButton ID="RadioButton2" runat="server" CssClass="auto-style36" Text="Employee" GroupName="UserType" />
        <asp:RadioButton ID="RadioButton3" runat="server" CssClass="auto-style37" Text="Manager" GroupName="UserType" />
        <asp:Button ID="Button1" runat="server" CssClass="auto-style38" Text="Submit" BackColor="#00CCFF" Font-Bold="True" ForeColor="White" OnClick="Button1_Click1" />
        <asp:Label ID="Label2" runat="server" CssClass="auto-style40" Text=""></asp:Label>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"  ControlToValidate="TextBox1" CssClass="auto-style42" Display="None" ErrorMessage="User Name Is Required"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"  ControlToValidate="TextBox3" CssClass="auto-style44" Display="None" ErrorMessage="PAN is Required"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"  ControlToValidate="TextBox2" CssClass="auto-style43" Display="None" ErrorMessage="Address is Required"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"  ControlToValidate="TextBox4" CssClass="auto-style45" Display="None" ErrorMessage="Password is Required"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"  ControlToValidate="TextBox5" CssClass="auto-style46" Display="None" ErrorMessage="Compare password is Required"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" CssClass="auto-style47" Display="None" ErrorMessage="Please enter Valid Username" ValidationExpression="^[a-zA-Z]+$"></asp:RegularExpressionValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox4" ControlToValidate="TextBox5" CssClass="auto-style48" Display="None" ErrorMessage="Password does not match" Type="Double"></asp:CompareValidator>
    </p>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="auto-style49" ForeColor="Red" />
    </asp:Content>
