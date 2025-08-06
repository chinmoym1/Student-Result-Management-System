<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="Subjectcomb.aspx.cs" Inherits="Result_management.Subjectcomb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1 {
            width: 100%;
            background-color: darkslategray;
            color: white;
            font-size: 20px;
            height: 40%;
            margin-top: 5%;
        }

        #ContentPlaceHolder1_Button1 {
            width: 8%;
        }

        td {
            font-weight: bold;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="style1" cellpadding="4" cellspacing="6">
        <tr>
            <td colspan="2" align="center">Add Subject Combination</td>
        </tr>
        <tr>
            <td align="center">Stream
                  <asp:DropDownList runat="server" Width="15%" ID="DropDownList1" align="center"></asp:DropDownList></td>
        </tr>
        <tr>
            <td align="Center">Subject
              <asp:DropDownList runat="server" Width="15%" ID="DropDownList2"></asp:DropDownList></td>
        </tr>
        <tr>
            <td align="center">
                <asp:Button ID="Button1" runat="server" Text="ADD" BackColor="#CCFF33" OnClick="Button1_Click" />
            </td>
        </tr>
    </table>

</asp:Content>
