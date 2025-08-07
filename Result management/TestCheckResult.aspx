<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TestCheckResult.aspx.cs" Inherits="Result_management.TestCheckResult" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Check Student Result</title>
    
    <!-- Load Tailwind CSS from CDN -->
    <script src="https://cdn.tailwindcss.com"></script>
    
    <!-- Use Inter font for a modern look -->
    <style>
        body {
            font-family: 'Inter', sans-serif;
        }
    </style>
</head>
<body class="bg-gray-100 text-gray-800 antialiased">
    <form id="form1" runat="server" submitdisabledcontrols="False" enableviewstate="True" visible="True">
        <!-- Header & Navigation -->
        <header class="bg-white shadow-sm sticky top-0 z-50">
            <nav class="container mx-auto px-4 py-4 flex items-center justify-between">
                <!-- Logo / Title -->
                <a href="default.aspx" class="text-2xl font-bold text-teal-600">SRMS</a>

                <!-- Navigation Links -->
                <div class="flex items-center space-x-6">
                    <a href="default.aspx" class="text-gray-600 hover:text-teal-600 transition-colors duration-200 font-medium">Home</a>
                    <a href="TestCheckResult.aspx" target="_blank" class="text-gray-600 hover:text-teal-600 transition-colors duration-200 font-medium">Result</a>
                    <a href="admin_login.aspx" target="_blank" class="text-white bg-teal-600 hover:bg-teal-700 font-semibold py-2 px-4 rounded-lg shadow-md transition-all duration-300 transform hover:scale-105">Admin Login</a>
                </div>
            </nav>
        </header>

        <!-- Main Content Wrapper -->
        <div class="container mx-auto px-4 py-16 flex justify-center">
            <div class="bg-white p-8 rounded-xl shadow-lg w-full max-w-lg space-y-6">
                <!-- Heading -->
                <div class="text-center">
                    <h1 class="text-3xl font-extrabold text-teal-800">Check Your Result</h1>
                    <p class="text-gray-600 mt-2">Enter your details below to view your academic performance.</p>
                </div>

                <!-- Roll No. Input -->
                <div>
                    <asp:Label ID="Label1" runat="server" Text="Roll No." CssClass="block text-sm font-medium text-gray-700 mb-1"></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="w-full px-4 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-teal-500 transition-colors duration-200"></asp:TextBox>
                </div>

                <!-- Semester Dropdown -->
                <div>
                    <asp:Label ID="Label2" runat="server" Text="Semester" CssClass="block text-sm font-medium text-gray-700 mb-1"></asp:Label>
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" CssClass="w-full px-4 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-teal-500 transition-colors duration-200 bg-white">
                        <asp:ListItem Value="">Select a Semester</asp:ListItem>
                        <asp:ListItem Value="1">Semester-1</asp:ListItem>
                        <asp:ListItem Value="2">Semester-2</asp:ListItem>
                        <asp:ListItem Value="3">Semester-3</asp:ListItem>
                        <asp:ListItem Value="4">Semester-4</asp:ListItem>
                        <asp:ListItem Value="5">Semester-5</asp:ListItem>
                        <asp:ListItem Value="6">Semester-6</asp:ListItem>
                    </asp:DropDownList>
                </div>
                
                <!-- Get Result Button -->
                <div>
                    <asp:Button ID="Button1" runat="server" Text="Get Result" OnClick="Button1_Click" CssClass="w-full bg-teal-600 text-white font-semibold py-3 px-4 rounded-lg shadow-md transition-all duration-300 transform hover:scale-105 hover:bg-teal-700 focus:outline-none focus:ring-2 focus:ring-teal-500 focus:ring-offset-2"></asp:Button>
                </div>

                <!-- Placeholder for server-side messages -->
                <asp:Label ID="Label3" runat="server" Text="." CssClass="text-sm text-center text-red-500"></asp:Label>
            </div>
        </div>
    </form>
</body>
</html>
