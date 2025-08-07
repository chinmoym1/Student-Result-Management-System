<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="TestRes1b.aspx.cs" Inherits="Result_management.TestRes1b" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- No custom styles needed here, as Tailwind CSS handles the design -->
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="flex items-center justify-center py-16">
        <div class="bg-white p-8 rounded-xl shadow-lg w-full max-w-4xl space-y-6">
            <!-- Page Heading -->
            <div class="text-center">
                <h2 class="text-3xl font-extrabold text-teal-800">Add Marks</h2>
                <p class="text-gray-600 mt-2">Select a semester and student to enter their marks.</p>
            </div>

            <!-- Selection Dropdowns -->
            <div class="flex flex-col sm:flex-row items-center justify-center space-y-4 sm:space-y-0 sm:space-x-8">
                <!-- Semester Dropdown -->
                <div>
                    <asp:Label ID="Label1" runat="server" Text="Semester" CssClass="block text-sm font-medium text-gray-700 mb-1"></asp:Label>
                    <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True" CssClass="w-full sm:w-48 px-4 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-teal-500 transition-colors duration-200 bg-white"></asp:DropDownList>
                </div>
                
                <!-- Student Dropdown -->
                <div>
                    <asp:Label ID="Label2" runat="server" Text="Student Name" CssClass="block text-sm font-medium text-gray-700 mb-1"></asp:Label>
                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" CssClass="w-full sm:w-64 px-4 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-teal-500 transition-colors duration-200 bg-white"></asp:DropDownList>
                </div>
            </div>

            <!-- Panel for Entering Marks -->
            <asp:Panel ID="Panel1" runat="server" CssClass="bg-gray-50 p-6 rounded-xl shadow-inner mt-8">
                <div class="grid grid-cols-1 sm:grid-cols-2 gap-x-12 gap-y-6">
                    <!-- Read-only student info -->
                    <div class="space-y-4 col-span-full">
                        <div class="flex items-center">
                            <label class="block text-sm font-semibold text-gray-700 w-1/4">Roll No:</label>
                            <asp:TextBox ID="TextBox1" runat="server" Font-Bold="True" ForeColor="Black" ReadOnly="True" CssClass="flex-1 px-4 py-2 border border-gray-300 rounded-lg bg-gray-200 focus:outline-none"></asp:TextBox>
                            <asp:Button ID="Button3" runat="server" Text="Check Rollno" Font-Bold="True" OnClick="Button3_Click" CssClass="ml-4 bg-teal-600 text-white font-semibold py-2 px-4 rounded-lg shadow-md hover:bg-teal-700 transition-colors duration-200" />
                        </div>
                        <div class="flex items-center">
                            <label class="block text-sm font-semibold text-gray-700 w-1/4">Name:</label>
                            <asp:TextBox ID="TextBox2" runat="server" Font-Bold="True" ForeColor="Black" ReadOnly="True" CssClass="flex-1 px-4 py-2 border border-gray-300 rounded-lg bg-gray-200 focus:outline-none"></asp:TextBox>
                        </div>
                        <div class="flex items-center">
                            <label class="block text-sm font-semibold text-gray-700 w-1/4">Stream:</label>
                            <asp:TextBox ID="TextBox3" runat="server" Font-Bold="True" ForeColor="Black" ReadOnly="True" CssClass="flex-1 px-4 py-2 border border-gray-300 rounded-lg bg-gray-200 focus:outline-none"></asp:TextBox>
                        </div>
                    </div>
                    
                    <!-- Marks Entry -->
                    <div class="space-y-4 col-span-full mt-8">
                        <h3 class="text-xl font-bold text-gray-800 mb-4">Enter Subject Marks</h3>
                        
                        <div class="grid grid-cols-2 gap-4">
                            <div class="text-sm font-semibold text-gray-700">Subject Name</div>
                            <div class="text-sm font-semibold text-gray-700">Marks</div>
                        </div>

                        <!-- Example Subject Rows (replace with dynamic content from C#) -->
                        <div class="grid grid-cols-2 gap-4 items-center">
                            <label class="text-gray-600">Core-I: Programming Fundamentals</label>
                            <asp:TextBox ID="TextBox4" runat="server" CssClass="w-full px-4 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-teal-500 transition-colors duration-200"></asp:TextBox>
                        </div>
                        <div class="grid grid-cols-2 gap-4 items-center">
                            <label class="text-gray-600">Core-II: Computer System Architecture</label>
                            <asp:TextBox ID="TextBox5" runat="server" CssClass="w-full px-4 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-teal-500 transition-colors duration-200"></asp:TextBox>
                        </div>
                        <div class="grid grid-cols-2 gap-4 items-center">
                            <label class="text-gray-600">AECC-1: Environmental Science</label>
                            <asp:TextBox ID="TextBox6" runat="server" CssClass="w-full px-4 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-teal-500 transition-colors duration-200"></asp:TextBox>
                        </div>
                        <div class="grid grid-cols-2 gap-4 items-center">
                            <label class="text-gray-600">GE-1: General Elective</label>
                            <asp:TextBox ID="TextBox7" runat="server" CssClass="w-full px-4 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-teal-500 transition-colors duration-200"></asp:TextBox>
                        </div>
                        
                        <!-- Total and Percentage -->
                        <div class="space-y-4 pt-6">
                            <div class="flex items-center">
                                <label class="block text-sm font-semibold text-gray-700 w-1/4">Total Marks:</label>
                                <asp:TextBox ID="TextBox8" runat="server" ReadOnly="True" CssClass="flex-1 px-4 py-2 border border-gray-300 rounded-lg bg-gray-200 focus:outline-none"></asp:TextBox>
                                <asp:Button ID="Button1" runat="server" Text="Calculate" OnClick="Button1_Click" CssClass="ml-4 bg-teal-600 text-white font-semibold py-2 px-4 rounded-lg shadow-md hover:bg-teal-700 transition-colors duration-200" />
                            </div>
                            <div class="flex items-center">
                                <label class="block text-sm font-semibold text-gray-700 w-1/4">Percentage:</label>
                                <asp:TextBox ID="TextBox9" runat="server" ReadOnly="True" CssClass="flex-1 px-4 py-2 border border-gray-300 rounded-lg bg-gray-200 focus:outline-none"></asp:TextBox>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Submit Button -->
                <div class="mt-8 text-center">
                    <asp:Button ID="Button2" runat="server" Text="Submit All" OnClick="Button2_Click" CssClass="bg-green-500 text-white font-bold py-3 px-8 rounded-lg shadow-md transition-all duration-300 transform hover:scale-105 hover:bg-green-600 focus:outline-none focus:ring-2 focus:ring-green-500 focus:ring-offset-2" />
                </div>
            </asp:Panel>
        </div>
    </div>
</asp:Content>
