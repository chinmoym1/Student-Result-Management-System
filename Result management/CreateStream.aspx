<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="CreateStream.aspx.cs" Inherits="Result_management.CreateStream" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1 {
            width: 50%;
            height: 40%;
            background-color: #989633;
            margin-left: 20%;
            margin-top: 5%;
        }

        .row1 {
            margin-bottom: 20px;
            text-align: justify-all;
        }

        .row2 {
            text-align: justify-all;
            margin-bottom: 20px;
        }

        .row3 {
            margin-left: 10px;
        }

        #ContentPlaceHolder1_Label1 {
            margin-left: 8%;
            padding: 2%;
            font-weight: bold;
            color: #4d1923;
            /* margin-top: 4%;*/
            position: absolute;
        }

        #ContentPlaceHolder1_Label2 {
            margin-left: 8%;
            padding: 2%;
            font-weight: bold;
            color: #4d1923;
            position: absolute;
            margin-top: 4%;
        }

        #ContentPlaceHolder1_TextBox1 {
            position: absolute;
            margin-top: 2%;
            margin-left: 18%;
        }


        #ContentPlaceHolder1_TextBox2 {
            margin-left: 18%;
            position: absolute;
            margin-top: 6%;
        }

        #ContentPlaceHolder1_Button1 {
            margin-left: 17%;
            position: absolute;
            margin-top: 10%;
            color: #3e26e1;
            font-weight: bold;
            width: 6%;
        }

        h3 {
            margin-left: 28%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="style1">
        <h3>Create Stream/Course</h3>
        <div class="row1">
            <asp:Label ID="Label1" runat="server" Text="StreamName"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </div>
        <div class="row2">
            <asp:Label ID="Label2" runat="server" Text="Semester"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </div>
        <div class="row3">
            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
        </div>
    </div>



</asp:Content>
