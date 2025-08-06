<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="TestRes1b.aspx.cs" Inherits="Result_management.TestRes1b" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        #ContentPlaceHolder1_DropDownList1 {
            width: 130px;
        }
        #ContentPlaceHolder1_DropDownList2 {
            width: 130px;
        }
        #ContentPlaceHolder1_Label2 {
            margin-left: 45px;
        }
        table{
            width:100%;
        }
        table{
            font-family:Arial,sans-serif;
            border-collapse:collapse;
            width:100%;
        }
        td,th{
            border: 1px solid #000000;
            text-align:left;
            padding:8px;
        }
        tr:nth-child(even){
            background-color:#dddddd;
        }
        th{
            background-color:#7d2f58f0;
            color:white;
        }

        #ContentPlaceHolder1_Button1 {
            width: 60px;
           
            font-size: 15px;
            font-weight: bold;
            /*! border-block-color: #dfa827; */
            /*! border-block-start: #237393; */
            /*! border-block-start-color: aquamarine; */
            border-color:darkslategray;
        }
        #ContentPlaceHolder1_Button2 {
            width: 60px;
            color: #3a10d0;
            font-size: 15px;
            font-weight: bold;
            /*! border-block-color: #dfa827; */
            /*! border-block-start: #237393; */
            /*! border-block-start-color: aquamarine; */
            border-color: #d0aa7b;
        }


    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Add Marks</h2>
    <table>
               <tr>
                   <th>Semester</th>
                   <th>Student Name</th>
               </tr>
            <tr>
                <td>
                   <%-- <asp:Label ID="Label1" runat="server" Text="Semester"></asp:Label>--%>
                    <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True"></asp:DropDownList>
                </td>
                <td>
                 <%--   <asp:Label ID="Label2" runat="server" Text="Student Name"></asp:Label>--%>
                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged"></asp:DropDownList>
                </td>
            </tr>
        
    </table>
    <asp:Panel ID="Panel1" runat="server">
            <table>
                <tr>
                    <th>Subject Name</th>
                    <th>Marks</th>
                    
                    

                </tr>
                <tr>
                    <td>Roll No</td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Font-Bold="True" ForeColor="Black" BorderStyle="Solid" BorderColor="#32AAAA" Font-Size="Medium" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                        <asp:Button ID="Button3" runat="server" Text="Check Rollno" Font-Bold="True" ForeColor="#0099CC" BorderStyle="Solid" BorderColor="#666633" OnClick="Button3_Click" />
                    </td>
                     
                    
                </tr>
                <tr>
                    <td>Name</td>
                     <td><asp:TextBox ID="TextBox2" runat="server"  Font-Bold="True" ForeColor="Black" BorderStyle="Solid" BorderColor="#32AAAA" Font-Size="Medium"></asp:TextBox></td>
                     
                    
                </tr>
                <tr>
                    <td>Stream</td>
                    <td><asp:TextBox ID="TextBox3" runat="server"  Font-Bold="True" ForeColor="Black" BorderStyle="Solid" BorderColor="#32AAAA" Font-Size="Medium"></asp:TextBox></td>
                    
                    
                </tr>
                 <tr>
                    <td>Core-I:Programming Fundamentals using C/C++</td>
                    <td><asp:TextBox ID="TextBox4" runat="server" Font-Bold="True" ForeColor="Black" BorderStyle="Solid" BorderColor="#32AAAA" Font-Size="Medium"></asp:TextBox></td>
                    
                    
                    
                </tr>
                 <tr>
                    <td>Core-II:Computer System Architecture</td>
                    <td><asp:TextBox ID="TextBox5" runat="server"  Font-Bold="True" ForeColor="Black" BorderStyle="Solid" BorderColor="#32AAAA" Font-Size="Medium"></asp:TextBox></td>
                   
                   
                    
                </tr>
                 <tr>
                    <td>AECC-1:Environmental Science</td>
                   <td><asp:TextBox ID="TextBox6" runat="server"  Font-Bold="True" ForeColor="Black" BorderStyle="Solid" BorderColor="#32AAAA" Font-Size="Medium"></asp:TextBox></td>
                     
                  
                  
                </tr>
                 <tr>
                     <td>GE-1:General Elective</td>
                     <td><asp:TextBox ID="TextBox7" runat="server"  Font-Bold="True" ForeColor="Black" BorderStyle="Solid" BorderColor="#32AAAA" Font-Size="Medium"></asp:TextBox></td>
                    
                   
                </tr>
                <tr>
                    <td>Total Marks</td>
                    <td><asp:TextBox ID="TextBox8" runat="server"  Font-Bold="True" ForeColor="Black" BorderStyle="Solid" BorderColor="#32AAAA" Font-Size="Medium"></asp:TextBox>
                        <asp:Button ID="Button1" runat="server" Text="Add" OnClick="Button1_Click" /></td>
                    
                </tr>
                <tr>
                    <td>Percentage</td>
                     <td><asp:TextBox ID="TextBox9" runat="server"  Font-Bold="True" ForeColor="Black" BorderStyle="Solid" BorderColor="#32AAAA" Font-Size="Medium"></asp:TextBox></td>
                     
                </tr>
                <tr >
                    <td></td>
                    <td >
                        <asp:Button ID="Button2" runat="server" Text="Submit" OnClick="Button2_Click" /></td>
                    
                    
                </tr>
               

            </table>
    </asp:Panel>
</asp:Content>
