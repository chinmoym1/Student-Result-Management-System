<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="AddStudent.aspx.cs" Inherits="Result_management.AddStudent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1 {
            background-color: #a29da6;
            width: 80%;
            height: 50%;
        }

        #ContentPlaceHolder1_DropDownList1 {
            width: 19%;
            margin-left: 48px;
        }

        #ContentPlaceHolder1_DropDownList2 {
            width: 19%;
            margin-left: 48px;
        }

        #ContentPlaceHolder1_TextBox1 {
            margin-left: 45px;
        }

        #ContentPlaceHolder1_TextBox3 {
            margin-left: 65px;
        }

        #ContentPlaceHolder1_Label2 {
            margin-left: 30%;
            font-weight: bold;
        }

        #ContentPlaceHolder1_Label3 {
            margin-left: 30%;
            font-weight: bold;
        }

        #ContentPlaceHolder1_Label4 {
            margin-left: 30%;
            font-weight: bold;
        }

        #ContentPlaceHolder1_Label5 {
            margin-left: 30%;
            font-weight: bold;
        }

        #ContentPlaceHolder1_Button1 {
            margin-left: 42%;
        }

        #ContentPlaceHolder1_datepicker {
            margin-left: 8%;
        }
    </style>
    <script type="text/javascript">

        $(function () {
            $('#<%= datepicker.ClientID %>').datepicker();

     });

    </script>


    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
        <h2>Add Student Details</h2>
    </center>
    <br />
    <table class="style1" align="center">

        <%-- <tr>
            <td>
                <asp:Label ID="Label1" runat="server" Text="Roll No."></asp:Label>
                 <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>--%>
        <tr>
            <td>
                <asp:Label ID="Label2" runat="server" Text="Student Name"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server" Required="true"></asp:TextBox>
                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="TextBox2" runat="server" ErrorMessage="*Required Field" ForeColor="Red"></asp:RequiredFieldValidator>--%>
            </td>
        </tr>

        <tr>
            <td>
                <asp:Label ID="Label3" runat="server" Text="Gender"></asp:Label>
                <asp:DropDownList ID="DropDownList1" runat="server" Required="true">
                    <asp:ListItem Value="0">Select</asp:ListItem>
                    <asp:ListItem Value="1">Male</asp:ListItem>
                    <asp:ListItem Value="2">Female</asp:ListItem>

                </asp:DropDownList>
            </td>
        </tr>

        <tr>
            <td>
                <asp:Label ID="Label4" runat="server" Text="DOB"></asp:Label>
                <asp:TextBox ID="datepicker" runat="server" placeholder="mm/dd/yyyy" Required="true"></asp:TextBox>

            </td>
        </tr>

        <tr>
            <td>
                <asp:Label ID="Label5" runat="server" Text="Stream"></asp:Label>
                <asp:DropDownList ID="DropDownList2" runat="server" Required="true"></asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="Button1" runat="server" Text="Submit" BackColor="#3399FF" Font-Bold="True" OnClick="Button1_Click" />
            </td>
        </tr>


    </table>
    <script type="text/javascript">
        $('#<%= System.IO.Path.GetFileNameWithoutExtension(System.Web.HttpContext.Current.Request.Url.AbsolutePath).ToLower()%>').addClass("active");
    </script>


</asp:Content>
