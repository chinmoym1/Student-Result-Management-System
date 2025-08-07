<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="Result_management.dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="space-y-8">
        <!-- Dashboard Heading -->
        <div class="text-center md:text-left">
            <h2 class="text-3xl font-extrabold text-gray-800">Admin Dashboard</h2>
            <p class="text-gray-600 mt-2">Welcome to the SRMS administration panel. Here's a quick overview of your system.</p>
        </div>

        <!-- Metric Cards Grid -->
        <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-6">
            <!-- Total Students Card -->
            <div class="bg-white rounded-xl shadow-lg p-6 flex items-center space-x-4 transition-transform duration-300 transform hover:scale-105 hover:shadow-2xl">
                <div class="bg-teal-100 text-teal-600 p-4 rounded-full">
                    <i class="fa-solid fa-users text-2xl"></i>
                </div>
                <div>
                    <h3 class="text-lg font-semibold text-gray-700">Total Students</h3>
                    <p class="text-3xl font-bold text-gray-900 mt-1">1,250</p>
                </div>
            </div>
            
            <!-- Total Courses Card -->
            <div class="bg-white rounded-xl shadow-lg p-6 flex items-center space-x-4 transition-transform duration-300 transform hover:scale-105 hover:shadow-2xl">
                <div class="bg-blue-100 text-blue-600 p-4 rounded-full">
                    <i class="fa-solid fa-book text-2xl"></i>
                </div>
                <div>
                    <h3 class="text-lg font-semibold text-gray-700">Total Courses</h3>
                    <p class="text-3xl font-bold text-gray-900 mt-1">12</p>
                </div>
            </div>

            <!-- Total Results Card -->
            <div class="bg-white rounded-xl shadow-lg p-6 flex items-center space-x-4 transition-transform duration-300 transform hover:scale-105 hover:shadow-2xl">
                <div class="bg-purple-100 text-purple-600 p-4 rounded-full">
                    <i class="fa-solid fa-file-lines text-2xl"></i>
                </div>
                <div>
                    <h3 class="text-lg font-semibold text-gray-700">Published Results</h3>
                    <p class="text-3xl font-bold text-gray-900 mt-1">3,400</p>
                </div>
            </div>
        </div>

        <!-- Placeholder for recent activity or charts -->
        <div class="bg-white rounded-xl shadow-lg p-6 mt-8">
            <h3 class="text-xl font-bold text-gray-800 mb-4">Recent System Activity</h3>
            <p class="text-gray-500">This is a placeholder for a list of recent activities, new student enrollments, or a graphical chart of student performance trends over time.</p>
        </div>
    </div>
</asp:Content>
