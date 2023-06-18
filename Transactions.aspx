<%@ Page Title="" Language="C#" MasterPageFile="~/ManagerDashboard.Master" AutoEventWireup="true" CodeBehind="Transactions.aspx.cs" Inherits="YourBank.Transactions" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style28 {
            width: 1100px;
            height: 700px;
        }
        .auto-style29 {
           position: absolute;
            top: 395px;
            left: 1192px;
            z-index: 1;
            text-align:center;
            width: 260px;
            height: 24px;
            padding:10px;
        }
        .auto-style30 {
             position: absolute;
            top: 464px;
            left: 1191px;
            z-index: 1;
             width: 268px;
             height: 17px;
            bottom: 506px;
            padding:5px;
        }
        .auto-style31 {
            position: absolute;
            top: 570px;
            left: 1192px;
            z-index: 1;
            padding:5px;
            width: 100px;
        }
        .auto-style32 {
            position: absolute;
            top: 570px;
            left: 1335px;
            z-index: 1;
            width: 127px;
            padding:5px;
        }
        .auto-style33 {
            position: absolute;
            top: 512px;
            left: 1192px;
            z-index: 1;
             width: 268px;
             height: 17px;
            bottom: 467px;
            padding:5px;
        }
        .auto-style34 {
            position: absolute;
            top: 637px;
            left: 1341px;
            z-index: 1;
            width: 132px;
             height: 39px;
            bottom: 334px;
            padding:5px;
        }
        .auto-style35 {
            position: absolute;
            top: 464px;
            left: 925px;
            z-index: 1;
        }
        .auto-style36 {
            position: absolute;
            top: 521px;
            left: 926px;
            z-index: 1;
        }
        .auto-style37 {
            position: absolute;
            top: 489px;
            left: 930px;
            z-index: 1;
        }
        .auto-style38 {
            width: 338px;
            height: 63px;
            position: absolute;
            top: 756px;
            left: 1166px;
            z-index: 1;
        }
        .auto-style39 {
            position: absolute;
            top: 693px;
            left: 1190px;
            z-index: 1;
            text-align:center;
            width: 260px;
            height: 24px;
            padding:10px;
        }
        .auto-style40 {
            position: absolute;
            top: 639px;
            left: 1192px;
            z-index: 1;
            width: 132px;
             height: 28px;
            text-align:center;
            padding-top:5px;
            text-decoration:none;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p style="background-color: #858585">
        <img alt="cx" class="auto-style28" src="Images/IndusInd-Bank-FEATURE-compressed.jpg" /><asp:Label ID="Label1" runat="server" CssClass="auto-style29" Text="Transactions" BackColor="#003366" Font-Bold="True" ForeColor="White"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter your amount" CssClass="auto-style30"></asp:TextBox>
        <asp:RadioButton ID="RadioButton1" runat="server" CssClass="auto-style31" Text="Deposit" ValidationGroup="AType" BackColor="#339966" Font-Bold="True" ForeColor="White" GroupName="AType" />
        <asp:RadioButton ID="RadioButton2" runat="server" CssClass="auto-style32" Text="With Draw" BackColor="#339966" Font-Bold="True" ForeColor="White" GroupName="AType" />
        <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style33" placeholder="Enter your Password" TextMode="Password"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" CssClass="auto-style34" Text="Submit" BackColor="#006699" Font-Bold="True" ForeColor="White" OnClick="Button1_Click" />
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" CssClass="auto-style35" Display="None" ErrorMessage="Please enter your amount"></asp:RequiredFieldValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" CssClass="auto-style36" Display="None" ErrorMessage="Please enter Password"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" CssClass="auto-style37" Display="None" ErrorMessage="Please enter valid amount" ValidationExpression="^\d+(\.\d{1,2})?$"></asp:RegularExpressionValidator>
        <asp:Label ID="Label2" runat="server" CssClass="auto-style39" ForeColor="#CC3300"></asp:Label>
        <asp:HyperLink ID="HyperLink8" runat="server" CssClass="auto-style40" BackColor="#006699" Font-Bold="True" ForeColor="White"  NavigateUrl="~/Transfers.aspx">Go Back</asp:HyperLink>
    </p>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="auto-style38" ForeColor="White" Width="338px" />
</asp:Content>
