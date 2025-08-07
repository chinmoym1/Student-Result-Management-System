<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_login.aspx.cs" Inherits="Result_management.login" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Login</title>
    
    <!-- Load Tailwind CSS from CDN -->
    <script src="https://cdn.tailwindcss.com"></script>
    
    <!-- Use Inter font for a modern look -->
    <style>
        body {
            font-family: 'Inter', sans-serif;
        }
    </style>
</head>
<body class="bg-gray-100 text-gray-800 antialiased min-h-screen">
    <form id="form1" runat="server">
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
        <div class="flex items-center justify-center py-16">
            <div class="bg-white p-8 rounded-xl shadow-lg w-full max-w-sm space-y-6">
                <!-- Login Heading -->
                <div class="text-center">
                    <h2 class="text-3xl font-extrabold text-teal-800">Admin Login</h2>
                    <p class="text-gray-600 mt-2">Enter your credentials to access the dashboard.</p>
                </div>

                <!-- UserID Input -->
                <div>
                    <asp:TextBox ID="TextBox1" runat="server" placeholder="UserID" CssClass="w-full px-4 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-teal-500 transition-colors duration-200"></asp:TextBox>
                </div>

                <!-- Password Input -->
                <div>
                    <asp:TextBox ID="TextBox2" runat="server" placeholder="Password" TextMode="Password" CssClass="w-full px-4 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-teal-500 transition-colors duration-200"></asp:TextBox>
                </div>

                <!-- Show Password Checkbox -->
                <div class="flex items-center space-x-2 text-sm text-gray-600">
                    <input type="checkbox" onchange="document.getElementById('<%= TextBox2.ClientID %>').type=this.checked ? 'text' : 'password'" class="form-checkbox h-4 w-4 text-teal-600 rounded focus:ring-teal-500" />
                    <span>Show password</span>
                </div>

                <!-- Login Button -->
                <div>
                    <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" CssClass="w-full bg-teal-600 text-white font-semibold py-3 px-4 rounded-lg shadow-md transition-all duration-300 transform hover:scale-105 hover:bg-teal-700 focus:outline-none focus:ring-2 focus:ring-teal-500 focus:ring-offset-2" />
                </div>
                
                <!-- Placeholder for server-side messages -->
                <div class="text-center">
                    <asp:Label ID="Label1" runat="server" ForeColor="Red" CssClass="text-sm font-medium"></asp:Label>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
