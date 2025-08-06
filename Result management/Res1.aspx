<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="Res1.aspx.cs" Inherits="Result_management.Res1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1 {
            margin-top: 120px;
            margin-left: 50px;
            
        }
         #ContentPlaceHolder1_Button1{
            height: 40px;
        }

        #ContentPlaceHolder1_Button2 {
            margin-left: 100px;
            height: 40px;
        }

        #ContentPlaceHolder1_Button3 {
            margin-left: 100px;
            height: 40px;
        }
         #ContentPlaceHolder1_Button4 {
            margin-top:100px;
            height: 40px;
        }
        
        #ContentPlaceHolder1_Button5 {
            margin-left: 100px;
            margin-top:100px;
            height: 40px;
        }
        #ContentPlaceHolder1_Button6 {
            margin-left: 100px;
            margin-top:100px;
            height: 40px;
        }
   </style>



</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Select Semester</h2>


    <div>
        <table class="style1">
            <tr></tr>
            
            <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Semester 1" ForeColor="#9999FF" Font-Bold="True" OnClick="Button1_Click" />
                </td>
                <td>
                     <asp:Button ID="Button2" runat="server" Text="Semester 2" ForeColor="#9999FF"  Font-Bold="True"/>
                </td>
                <td>
                     <asp:Button ID="Button3" runat="server" Text="Semester 3" ForeColor="#9999FF"  Font-Bold="True" />
                </td>
                
            </tr>
            <tr>
                <td> 
                    <asp:Button ID="Button4" runat="server" Text="Semester 4" ForeColor="#9999FF"  Font-Bold="True" />
                </td>
                <td>
                 <asp:Button ID="Button5" runat="server" Text="Semester 5"  ForeColor="#9999FF"  Font-Bold="True"/>
                 </td>
                <td> 
                    <asp:Button ID="Button6" runat="server" Text="Semester 6" ForeColor="#9999FF"  Font-Bold="True" />
                </td>
              </tr>
        </table>
    </div>
</asp:Content>
