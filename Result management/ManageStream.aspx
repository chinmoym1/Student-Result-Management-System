<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="ManageStream.aspx.cs" Inherits="Result_management.ManageStream" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1{
            width:102%;
            background-color:#65526A;
            color:white;
            font-size:20px;
    }

    </style>
    
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <center>
            <h2>Update and Delete Stream</h2>
            <hr />
            <span>Enter Class ID:
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" Text="Search" ForeColor="#798AD0" Height="23px" Width="70px" Font-Bold="True" OnClick="Button1_Click" />

            </span>
            <br />

            <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateSelectButton="True" EmptyDataText="Record Not Found Try Again" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" BackColor="#DBB9A4"></asp:GridView>
     
 </center>  

    </div>
    <br />  <br />
    <div>
        <asp:Panel ID="Panel1" runat="server">
            <table class="style1">
                <tr>
                    <td><asp:Label ID="Label1" runat="server" Text="Class ID"></asp:Label></td>
                    <td >
                        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></td>
                </tr>
             <tr>
                    <td><asp:Label ID="Label2" runat="server" Text="Stream Name"></asp:Label></td>
                    <td >
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
             </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Semester"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="TextBox3" runat="server" ></asp:TextBox></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="Date"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox></td>
                </tr>
              <tr>
                  <td align="right">
                      <asp:Button ID="Button2" runat="server" Text="Update" BackColor="#4CB313" Height="30px" Width="50px" OnClick="Button2_Click" />
                  </td>
                  <td>
                      <asp:Button ID="Button3" runat="server" Text="Delete" BackColor="#FF3300" Height="30px" Width="50px" OnClick="Button3_Click" />
                  </td>
              </tr>
            </table>

        </asp:Panel>

    </div>



</asp:Content>
