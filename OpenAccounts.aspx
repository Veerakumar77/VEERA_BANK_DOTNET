<%@ Page Title="" Language="C#" MasterPageFile="~/ManagerDashboard.Master" AutoEventWireup="true" CodeBehind="OpenAccounts.aspx.cs" Inherits="YourBank.OpenAccounts" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style28 {
            width: 1021px;
            height: 816px;
        }

        .auto-style29 {
            position: absolute;
            top: 350px;
            left: 1154px;
            z-index: 1;
            text-align: center;
            width: 231px;
        }

        .auto-style30 {
            position: absolute;
            top: 420px;
            left: 1125px;
            z-index: 1;
            width: 285px;
            height: 25px;
            bottom: 560px;
        }

        .auto-style31 {
            position: absolute;
            top: 478px;
            left: 1125px;
            z-index: 1;
            width: 285px;
            height: 25px;
            bottom: 502px;
        }

        .auto-style33 {
            position: absolute;
            top: 537px;
            left: 1125px;
            z-index: 1;
            width: 285px;
            height: 25px;
            bottom: 510px;
        }

        .auto-style34 {
            position: absolute;
            top: 595px;
            left: 1125px;
            z-index: 1;
            width: 285px;
            height: 25px;
            bottom: 452px;
        }

        .auto-style35 {
            position: absolute;
            top: 652px;
            left: 1125px;
            z-index: 1;
            width: 285px;
            height: 25px;
            bottom: 329px;
        }

        .auto-style36 {
            position: absolute;
            top: 711px;
            left: 1124px;
            z-index: 1;
            width: 285px;
            height: 25px;
            }

        .auto-style37 {
            position: absolute;
            top: 782px;
            left: 1157px;
            z-index: 1;
        }

        .auto-style39 {
            position: absolute;
            top: 829px;
            left: 1314px;
            z-index: 1;
            width: 103px;
            height: 35px;
        }

        .auto-style40 {
            position: absolute;
            top: 889px;
            left: 1126px;
            z-index: 1;
            width: 285px;
            height: 25px;
            bottom: 212px;
            text-align: center;
        }
        .auto-style41 {
            width: 1520px;
            height: 818px;
        }
        .auto-style42 {
            position: absolute;
            top: 416px;
            left: 853px;
            z-index: 1;
        }
        .auto-style43 {
            position: absolute;
            top: 464px;
            left: 833px;
            z-index: 1;
        }
        .auto-style45 {
            position: absolute;
            top: 588px;
            left: 819px;
            z-index: 1;
        }
        .auto-style46 {
            position: absolute;
            top: 646px;
            left: 833px;
            z-index: 1;
        }
        .auto-style47 {
            position: absolute;
            top: 711px;
            left: 840px;
            z-index: 1;
        }
        .auto-style48 {
            position: absolute;
            top: 770px;
            left: 838px;
            z-index: 1;
        }
        .auto-style51 {
            position: absolute;
            top: 800px;
            left: 854px;
            z-index: 1;
        }
        .auto-style52 {
            position: absolute;
            top: 438px;
            left: 851px;
            z-index: 1;
        }
        .auto-style53 {
            width: 359px;
            height: 63px;
            position: absolute;
            top: 945px;
            left: 1101px;
            z-index: 1;
        }
        .auto-style54 {
            position: absolute;
            top: 782px;
            left: 1272px;
            z-index: 1;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p style="background-color: #e0f1ff" class="auto-style41">
        <img alt="esr" class="auto-style28" src="Images/photo-1529539795054-3c162aab037a.jpg" /><asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" CssClass="auto-style46" Display="None" ErrorMessage="Minimum Balance Required"></asp:RequiredFieldValidator>
        <asp:Label ID="Label1" runat="server" CssClass="auto-style29" Text="Open Account"></asp:Label>
        <asp:TextBox ID="TextBox2" placeholder="Enter Customer Address" runat="server" CssClass="auto-style31"></asp:TextBox>
        <asp:TextBox ID="TextBox4" type="date" placeholder="Enter Customer DOB" runat="server" CssClass="auto-style33" TextMode="Date"></asp:TextBox>
        <asp:TextBox ID="TextBox5"  placeholder="Enter Minimum Balance" runat="server" CssClass="auto-style34"></asp:TextBox>
        <asp:TextBox ID="TextBox6" MinLength="8" placeholder="Create Password" runat="server" CssClass="auto-style35" TextMode="Password"></asp:TextBox>
        <asp:TextBox ID="TextBox7" MinLength="8" placeholder="Confirm Password" runat="server" CssClass="auto-style36" TextMode="Password"></asp:TextBox>
        <asp:RadioButton ID="RadioButton1" runat="server" CssClass="auto-style37" GroupName="AccountType" Text="Savings" />
        <asp:Button ID="Button1" runat="server" CssClass="auto-style39" OnClick="Button1_Click" Text="Submit" BackColor="#3333FF" Font-Bold="True" ForeColor="White" />
        <asp:Label ID="Label2" runat="server" CssClass="auto-style40"></asp:Label>
        <asp:TextBox ID="TextBox1" placeholder="Enter Customer Name" MinLength="6" runat="server" CssClass="auto-style30"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" CssClass="auto-style42" Display="None" ErrorMessage="Customer Name is Required"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" CssClass="auto-style43" Display="None" ErrorMessage="Address is Required"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" CssClass="auto-style45" Display="None" ErrorMessage="DOB is Required"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox6" CssClass="auto-style47" Display="None" ErrorMessage="Password is Required"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox7" CssClass="auto-style48" Display="None" ErrorMessage="Confirm Password is Required"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox6" ControlToValidate="TextBox7" CssClass="auto-style51" Display="None" ErrorMessage="CompareValidator">Password does not Match</asp:CompareValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" CssClass="auto-style52" Display="None" ValidationExpression="^[a-zA-Z]+$" ErrorMessage="Please Enter Valid Name"></asp:RegularExpressionValidator>
        <asp:RadioButton ID="RadioButton2" runat="server" CssClass="auto-style54" GroupName="AccountType" Text="Loan" />
    </p>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="auto-style53" ForeColor="Red" Width="359px" />
</asp:Content>
