<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="Res1.aspx.cs" Inherits="Result_management.Res1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- No custom styles needed here, as Tailwind CSS handles the design -->
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="flex items-center justify-center py-16">
        <div class="bg-white p-8 rounded-xl shadow-lg w-full max-w-2xl space-y-8 text-center">
            <!-- Page Heading -->
            <div>
                <h2 class="text-3xl font-extrabold text-teal-800">Select Semester</h2>
                <p class="text-gray-600 mt-2">Choose a semester to add student results.</p>
            </div>
            
            <!-- Semester Buttons Grid -->
            <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-6">
                <asp:Button ID="Button1" runat="server" Text="Semester 1" ForeColor="white" Font-Bold="True" OnClick="Button1_Click" CssClass="bg-teal-600 font-semibold py-4 px-6 rounded-lg shadow-md transition-all duration-300 transform hover:scale-105 hover:bg-teal-700 focus:outline-none focus:ring-2 focus:ring-teal-500 focus:ring-offset-2" />
                <asp:Button ID="Button2" runat="server" Text="Semester 2" ForeColor="white" Font-Bold="True" OnClick="Button2_Click" CssClass="bg-teal-600 font-semibold py-4 px-6 rounded-lg shadow-md transition-all duration-300 transform hover:scale-105 hover:bg-teal-700 focus:outline-none focus:ring-2 focus:ring-teal-500 focus:ring-offset-2" />
                <asp:Button ID="Button3" runat="server" Text="Semester 3" ForeColor="white" Font-Bold="True" OnClick="Button3_Click" CssClass="bg-teal-600 font-semibold py-4 px-6 rounded-lg shadow-md transition-all duration-300 transform hover:scale-105 hover:bg-teal-700 focus:outline-none focus:ring-2 focus:ring-teal-500 focus:ring-offset-2" />
                <asp:Button ID="Button4" runat="server" Text="Semester 4" ForeColor="white" Font-Bold="True" OnClick="Button4_Click" CssClass="bg-teal-600 font-semibold py-4 px-6 rounded-lg shadow-md transition-all duration-300 transform hover:scale-105 hover:bg-teal-700 focus:outline-none focus:ring-2 focus:ring-teal-500 focus:ring-offset-2" />
                <asp:Button ID="Button5" runat="server" Text="Semester 5" ForeColor="white" Font-Bold="True" OnClick="Button5_Click" CssClass="bg-teal-600 font-semibold py-4 px-6 rounded-lg shadow-md transition-all duration-300 transform hover:scale-105 hover:bg-teal-700 focus:outline-none focus:ring-2 focus:ring-teal-500 focus:ring-offset-2" />
                <asp:Button ID="Button6" runat="server" Text="Semester 6" ForeColor="white" Font-Bold="True" OnClick="Button6_Click" CssClass="bg-teal-600 font-semibold py-4 px-6 rounded-lg shadow-md transition-all duration-300 transform hover:scale-105 hover:bg-teal-700 focus:outline-none focus:ring-2 focus:ring-teal-500 focus:ring-offset-2" />
            </div>
        </div>
    </div>
</asp:Content>
