<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="addteststud.aspx.cs" Inherits="Result_management.addteststud" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
    
    <script type="text/javascript">
        $(function () {
            $('#<%= datepicker.ClientID %>').datepicker({
                dateFormat: "dd/mm/yy",
                // Added new options to allow month and year selection
                changeMonth: true,
                changeYear: true,
                yearRange: "-100:+0" // Allows years from 100 years ago to the current year
            });
        });
    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="flex items-center justify-center py-16">
        <div class="bg-white p-8 rounded-xl shadow-lg w-full max-w-lg space-y-6">
            <!-- Form Heading -->
            <div class="text-center">
                <h2 class="text-3xl font-extrabold text-teal-800">Add Student Details</h2>
                <p class="text-gray-600 mt-2">Fill out the form below to add a new student.</p>
            </div>
            
            <!-- Form Fields -->
            <div class="space-y-4">
                <!-- Student Name Input -->
                <div>
                    <asp:Label ID="Label2" runat="server" Text="Student Name" CssClass="block text-sm font-medium text-gray-700 mb-1"></asp:Label>
                    <asp:TextBox ID="TextBox2" runat="server" Required="true" CssClass="w-full px-4 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-teal-500 transition-colors duration-200" placeholder="Student's Full Name"></asp:TextBox>
                </div>
                
                <!-- Gender Dropdown -->
                <div>
                    <asp:Label ID="Label3" runat="server" Text="Gender" CssClass="block text-sm font-medium text-gray-700 mb-1"></asp:Label>
                    <asp:DropDownList ID="DropDownList1" runat="server" Required="true" CssClass="w-full px-4 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-teal-500 transition-colors duration-200 bg-white">
                        <asp:ListItem Value="0">Select Gender</asp:ListItem>
                        <asp:ListItem Value="Male">Male</asp:ListItem>
                        <asp:ListItem Value="Female">Female</asp:ListItem>
                    </asp:DropDownList>
                </div>

                <!-- DOB Input with Datepicker -->
                <div>
                    <asp:Label ID="Label4" runat="server" Text="Date of Birth" CssClass="block text-sm font-medium text-gray-700 mb-1"></asp:Label>
                    <asp:TextBox ID="datepicker" runat="server" placeholder="dd/mm/yyyy" Required="true" CssClass="w-full px-4 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-teal-500 transition-colors duration-200"></asp:TextBox>
                </div>

                <!-- Stream Dropdown -->
                <div>
                    <asp:Label ID="Label5" runat="server" Text="Stream" CssClass="block text-sm font-medium text-gray-700 mb-1"></asp:Label>
                    <asp:DropDownList ID="DropDownList2" runat="server" Required="true" CssClass="w-full px-4 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-teal-500 transition-colors duration-200 bg-white">
                    </asp:DropDownList>
                </div>
            </div>

            <!-- Submit Button -->
            <div>
                <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" CssClass="w-full bg-teal-600 text-white font-semibold py-3 px-4 rounded-lg shadow-md transition-all duration-300 transform hover:scale-105 hover:bg-teal-700 focus:outline-none focus:ring-2 focus:ring-teal-500 focus:ring-offset-2" />
            </div>
        </div>
    </div>
</asp:Content>
