<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="CreateSubject.aspx.cs" Inherits="Result_management.CreateSubject" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1 {
            width: 60%;
            background-color: chocolate;
            font-size: 22px;
            margin-top: 5%;
            margin-left: 20%;
        }

        #ContentPlaceHolder1_Button1 {
            margin-left: 38%;
            height: 22px;
            width: 14%;
        }

        #ContentPlaceHolder1_Label2 {
            margin-left: 15%;
        }

        #ContentPlaceHolder1_Label3 {
            margin-left: 15%;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style1" cellpadding="15">
        <tr>
            <td colspan="2" align="center">
                <asp:Label ID="Label1" runat="server" Text="Create Subject" ForeColor="Black" Font-Bold="True"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Subject Name" Font-Bold="True"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>

                <asp:Label ID="Label3" runat="server" Text="Subject Code" Font-Bold="True"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" Text="ADD" BackColor="#9999FF" OnClick="Button1_Click" />
            </td>

        </tr>
        <tr></tr>

    </table>
</asp:Content>
