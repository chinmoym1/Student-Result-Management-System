<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="CreateSubject.aspx.cs" Inherits="Result_management.CreateSubject" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- No custom styles needed here, as Tailwind CSS handles the design -->
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="flex items-center justify-center py-16">
        <div class="bg-white p-8 rounded-xl shadow-lg w-full max-w-lg space-y-6">
            <!-- Form Heading -->
            <div class="text-center">
                <h2 class="text-3xl font-extrabold text-teal-800">Create Subject</h2>
                <p class="text-gray-600 mt-2">Enter the details for a new subject.</p>
            </div>
            
            <!-- Form Fields -->
            <div class="space-y-4">
                <!-- Subject Name Input -->
                <div>
                    <asp:Label ID="Label2" runat="server" Text="Subject Name" CssClass="block text-sm font-medium text-gray-700 mb-1"></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="w-full px-4 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-teal-500 transition-colors duration-200" placeholder="e.g., Data Structures"></asp:TextBox>
                </div>
                
                <!-- Subject Code Input -->
                <div>
                    <asp:Label ID="Label3" runat="server" Text="Subject Code" CssClass="block text-sm font-medium text-gray-700 mb-1"></asp:Label>
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="w-full px-4 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-teal-500 transition-colors duration-200" placeholder="e.g., CS101"></asp:TextBox>
                </div>
            </div>

            <!-- Submit Button -->
            <div>
                <asp:Button ID="Button1" runat="server" Text="ADD" OnClick="Button1_Click" CssClass="w-full bg-teal-600 text-white font-semibold py-3 px-4 rounded-lg shadow-md transition-all duration-300 transform hover:scale-105 hover:bg-teal-700 focus:outline-none focus:ring-2 focus:ring-teal-500 focus:ring-offset-2" />
            </div>
        </div>
    </div>
</asp:Content>
