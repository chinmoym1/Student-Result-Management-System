<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="ManageSub.aspx.cs" Inherits="Result_management.ManageSub" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1 {
            width: 102%;
            color: black;
            font-size: 20px;
            margin-left:0%;
            margin-top: 3%;
        }

        #ContentPlaceHolder1_Label4 {
            margin-left: -161px;
        }

        #ContentPlaceHolder1_Label1 {
            margin-left: 30%;
        }
        #ContentPlaceHolder1_Panel1 {
  background-color: #c17171;
}
    </style>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" Text="Update and Delete Subject" align="center" Font-Bold="True" ForeColor="Black" Font-Size="25px"></asp:Label>

    <table class="style1">
        <tr>
            <td colspan="2"></td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" BackColor="#E682AA" AutoGenerateSelectButton="True" EmptyDataText="Record not Found Try Again" HorizontalAlign="Left" OnSelectedIndexChanged="GridView1_SelectedIndexChanged"></asp:GridView>
            </td>

            <td>
                <asp:Panel ID="Panel1" runat="server">
                    <table>
                        <tr>
                            <td>
                                <asp:Label ID="Label2" runat="server" Text="Subject ID"></asp:Label></td>
                            <td>
                                <asp:Label ID="Label4" runat="server" Text="Label" ForeColor="Black" BackColor="#FFFF66"></asp:Label></td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label3" runat="server" Text="Subject Name"></asp:Label>
                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Label ID="Label5" runat="server" Text="Subject Code"></asp:Label>
                                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>

                            </td>
                        </tr>
                        <tr>
                            <td align="right">
                                <asp:Button ID="Button1" runat="server" Text="Update" BackColor="#66FF33" Height="30px" Width="50px" OnClick="Button1_Click" />
                            </td>
                            <td align="left">
                                <asp:Button ID="Button2" runat="server" Text="Delete" BackColor="#FF3300" Height="30px" Width="50px" OnClick="Button2_Click" />
                            </td>
                        </tr>

                    </table>
                </asp:Panel>
            </td>
        </tr>

    </table>
</asp:Content>
