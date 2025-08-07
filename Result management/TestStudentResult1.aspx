<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TestStudentResult1.aspx.cs" Inherits="Result_management.TestStudentResult1" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Result</title>
    
    <!-- Load Tailwind CSS from CDN -->
    <script src="https://cdn.tailwindcss.com"></script>
    
    <!-- Use Inter font for a modern look -->
    <style>
        body {
            font-family: 'Inter', sans-serif;
        }
        /* Custom styling for the progress bar */
        .progress-bar-container {
            width: 100%;
            background-color: #e5e7eb;
            border-radius: 9999px;
            overflow: hidden;
        }
        .progress-bar {
            height: 100%;
            border-radius: 9999px;
            transition: width 0.5s ease-in-out;
        }
    </style>
</head>
<body class="bg-gradient-to-br from-teal-50 via-gray-100 to-teal-100 text-gray-800 antialiased py-16">
    <form id="form1" runat="server">
        <div class="container mx-auto px-4 w-full max-w-4xl">
            <!-- Header Section -->
            <div class="bg-white p-6 rounded-t-xl shadow-lg border-b-2 border-teal-600">
                <div class="flex items-center space-x-4">
                    <!-- Placeholder Logo for University -->
                    <img src="https://placehold.co/104x80/134E4A/fff?text=Logo" alt="University Logo" class="h-20 w-auto">
                    <div>
                        <h1 class="text-xl md:text-2xl font-bold text-gray-800">Student Result Management System</h1>
                        <h2 class="text-xl md:text-2xl font-bold text-teal-700">Binod Bihari Mahto Koyalanchal University, Dhanbad</h2>
                        <h3 class="text-lg text-gray-600 mt-1">Semester 1 Examination</h3>
                    </div>
                </div>
            </div>

            <div class="bg-white p-8 rounded-b-xl shadow-lg mt-0">
                <div class="grid grid-cols-1 md:grid-cols-2 gap-4 text-sm font-medium text-gray-700 mb-6">
                    <div>
                        Roll No: <asp:Label ID="lblroll" runat="server" Text="" CssClass="font-normal text-gray-900"></asp:Label>
                    </div>
                    <div>
                        Name: <asp:Label ID="lblname" runat="server" Text="" CssClass="font-normal text-gray-900"></asp:Label>
                    </div>
                    <div>
                        Stream: <asp:Label ID="lblstream" runat="server" Text="" CssClass="font-normal text-gray-900"></asp:Label>
                    </div>
                </div>

                <!-- Final Result Section (Prominently displayed) -->
                <div class="bg-green-100 p-4 rounded-lg border-2 border-green-400 mb-6">
                    <h4 class="text-lg text-green-800 font-bold">Final Status: <asp:Label ID="lblFinalStatus" runat="server" Text="PASS" CssClass="text-2xl font-extrabold ml-2"></asp:Label></h4>
                </div>
                
                <!-- Marks Table -->
                <div class="overflow-x-auto mb-6">
                    <table class="min-w-full bg-white rounded-lg overflow-hidden border border-gray-200">
                        <thead>
                            <tr class="bg-gray-100 border-b border-gray-200">
                                <th class="py-3 px-6 text-left text-xs font-semibold text-gray-600 uppercase tracking-wider">Subject Name</th>
                                <th class="py-3 px-6 text-left text-xs font-semibold text-gray-600 uppercase tracking-wider w-1/4">Marks</th>
                            </tr>
                        </thead>
                        <tbody class="divide-y divide-gray-200">
                            <tr class="bg-white even:bg-gray-50">
                                <td class="py-3 px-6 text-sm text-gray-900 font-bold">Core-I: Programming Fundamentals using C/C++</td>
                                <td class="py-3 px-6 text-sm text-gray-900 flex items-center space-x-2">
                                    <asp:Label ID="lblcore1" runat="server" Text=""></asp:Label>
                                    <div class="progress-bar-container w-24 sm:w-32">
                                        <!-- The width style will be set dynamically in your C# code-behind -->
                                        <div class="progress-bar bg-teal-500" style="width: <%= core1Percentage %>%"></div>
                                    </div>
                                </td>
                            </tr>
                            <tr class="bg-white even:bg-gray-50">
                                <td class="py-3 px-6 text-sm text-gray-900 font-bold">Core-II: Computer System Architecture</td>
                                <td class="py-3 px-6 text-sm text-gray-900 flex items-center space-x-2">
                                    <asp:Label ID="lblcore2" runat="server" Text=""></asp:Label>
                                    <div class="progress-bar-container w-24 sm:w-32">
                                        <div class="progress-bar bg-teal-500" style="width: <%= core2Percentage %>%"></div>
                                    </div>
                                </td>
                            </tr>
                            <tr class="bg-white even:bg-gray-50">
                                <td class="py-3 px-6 text-sm text-gray-900 font-bold">AECC-1: Environmental Science</td>
                                <td class="py-3 px-6 text-sm text-gray-900 flex items-center space-x-2">
                                    <asp:Label ID="lblaecc1" runat="server" Text=""></asp:Label>
                                    <div class="progress-bar-container w-24 sm:w-32">
                                        <div class="progress-bar bg-teal-500" style="width: <%= aecc1Percentage %>%"></div>
                                    </div>
                                </td>
                            </tr>
                            <tr class="bg-white even:bg-gray-50">
                                <td class="py-3 px-6 text-sm text-gray-900 font-bold">GE-1: General Elective</td>
                                <td class="py-3 px-6 text-sm text-gray-900 flex items-center space-x-2">
                                    <asp:Label ID="lblge1" runat="server" Text=""></asp:Label>
                                    <div class="progress-bar-container w-24 sm:w-32">
                                        <div class="progress-bar bg-teal-500" style="width: <%= ge1Percentage %>%"></div>
                                    </div>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>

                <!-- Summary Section -->
                <div class="bg-teal-50 p-4 rounded-lg border-2 border-teal-200 font-bold">
                    <h4 class="text-xl text-teal-800 mb-2">Final Result</h4>
                    <div class="flex flex-col md:flex-row justify-between items-center text-sm md:text-base text-gray-800">
                        <div class="flex items-center space-x-2">
                            <span>Total Marks:</span>
                            <asp:Label ID="lbltotal" runat="server" Text="" CssClass="text-teal-700 text-xl"></asp:Label>
                        </div>
                        <div class="flex items-center space-x-2">
                            <span>Percentage:</span>
                            <asp:Label ID="lblper" runat="server" Text="" CssClass="text-teal-700 text-xl"></asp:Label>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
