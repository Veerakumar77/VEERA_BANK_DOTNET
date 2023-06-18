<%@ Page Title="" Language="C#" MasterPageFile="~/ManagerDashboard.Master" AutoEventWireup="true" CodeBehind="Details.aspx.cs" Inherits="YourBank.Details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style28 {
            width: 85%;
            margin-left: 187px;
            height: 495px;
        }

        .auto-style29 {
            position: absolute;
            top: 470px;
            left: 294px;
            z-index: 1;
            width: 208px;
            height: 31px;
            text-align: center;
             padding-top:10px;
        }

        .auto-style30 {
            height: 43px;
        }

        .auto-style31 {
            position: absolute;
            top: 541px;
            left: 294px;
            z-index: 1;
            width: 208px;
            height: 31px;
            text-align: center;
            right: 873px;
            padding-top:10px;
        }

        .auto-style32 {
            position: absolute;
            top: 613px;
            left: 294px;
            z-index: 1;
            width: 208px;
            height: 31px;
            text-align: center;
            padding-top:10px;
        }

        .auto-style33 {
            position: absolute;
            top: 688px;
            left: 294px;
            z-index: 1;
            width: 208px;
            height: 31px;
            text-align: center;
                padding-top:10px;
        }

        .auto-style35 {
            position: absolute;
            top: 759px;
            left: 294px;
            z-index: 1;
            width: 208px;
            height: 31px;
            text-align: center;
            padding-top:10px;
        }
        .auto-style36 {
            height: 43px;
            width: 319px;
        }
        .auto-style37 {
            position: absolute;
            top: 470px;
            left: 550px;
            z-index: 1;
            width: 208px;
            height: 31px;
            text-align: center;
            padding-top:10px;
        }
        .auto-style38 {
            position: absolute;
            top: 542px;
            left: 549px;
            z-index: 1;
            width: 208px;
            height: 31px;
            text-align: center;
            padding-top:10px;
        }
        .auto-style39 {
            position: absolute;
            top: 612px;
            left: 550px;
            z-index: 1;
            width: 208px;
            height: 31px;
            text-align: center;
            padding-top:10px;
            right: 619px;
        }
        .auto-style40 {
            position: absolute;
            top: 759px;
            left: 550px;
            z-index: 1;
            width: 208px;
            height: 31px;
            padding-top:10px;
            text-align: center;
        }
        .auto-style42 {
            position: absolute;
            top: 689px;
            left: 550px;
            z-index: 1;
            width: 208px;
            height: 31px;
            text-align: center;
            padding-top:10px;
        }
        .auto-style43 {
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
        <br />
    </p>
        <table class="auto-style28">
            <tr>
                <td class="auto-style36">
                    <asp:HyperLink ID="HyperLink8" BackColor="#1191EE" runat="server" CssClass="auto-style43" Font-Bold="True" ForeColor="White" NavigateUrl="~/Transfers.aspx">Transfers</asp:HyperLink>
                </td>
                <td class="auto-style36">&nbsp;</td>
                <td class="auto-style30">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style36">
                    &nbsp;</td>
                <td class="auto-style36">
                    <asp:Label ID="Label7" runat="server" CssClass="auto-style38" BackColor="#00CCFF"></asp:Label>
                </td>
                <td class="auto-style30">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style36">
                    <asp:Label ID="Label1" runat="server" CssClass="auto-style29" Text="Customer ID" BackColor="#0099FF"></asp:Label>
                </td>
                <td class="auto-style36">
                    </td>
                <td class="auto-style30"></td>
            </tr>
            <tr>
                <td class="auto-style36">
                    &nbsp;</td>
                <td class="auto-style36">
                    <asp:Label ID="Label9" runat="server" CssClass="auto-style39" BackColor="#00CCFF"></asp:Label>
                </td>
                <td class="auto-style30"></td>
            </tr>
            <tr>
                <td class="auto-style36">
                    <asp:Label ID="Label2" runat="server" CssClass="auto-style31" Text="Customer Name" BackColor="#0099FF"></asp:Label>
                    <asp:Label ID="Label3" runat="server" CssClass="auto-style32" Text="Address" BackColor="#0099FF"></asp:Label>
                </td>
                <td class="auto-style36">
                    <asp:Label ID="Label10" runat="server" CssClass="auto-style40" BackColor="#00CCFF"></asp:Label>
                    <asp:Label ID="Label8" runat="server" CssClass="auto-style42" BackColor="#00CCFF"></asp:Label>
                </td>
                <td class="auto-style30"></td>
            </tr>
            <tr>
                <td class="auto-style36">
                    <asp:Label ID="Label4" runat="server" CssClass="auto-style33" Text="PAN" BackColor="#0099FF"></asp:Label>
                </td>
                <td class="auto-style36"></td>
                <td class="auto-style30"></td>
            </tr>
            <tr>
                <td class="auto-style36">
                    </td>
                <td class="auto-style36">
                    <asp:Label ID="Label12" runat="server" CssClass="auto-style37" BackColor="#00CCFF"></asp:Label>
                </td>
                <td class="auto-style30"></td>
            </tr>
            <tr>
                <td class="auto-style36">
                    <asp:Label ID="Label6" runat="server" CssClass="auto-style35" Text="Account Type" BackColor="#0099FF"></asp:Label>
                </td>
                <td class="auto-style36"></td>
                <td class="auto-style30"></td>
            </tr>
        </table>
    </asp:Content>
