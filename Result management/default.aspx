<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Result_management.WebForm1" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Result Management System</title>
    
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

        <!-- Hero Section -->
        <main class="py-20 bg-gradient-to-br from-teal-50 to-teal-100 text-center">
            <div class="container mx-auto px-4">
                <h1 class="text-5xl font-extrabold text-teal-800 mb-4 leading-tight">
                    Student Result Management System
                </h1>
                <p class="text-xl text-gray-600 mb-8 max-w-2xl mx-auto">
                    A modern, efficient, and user-friendly platform to digitally manage and track student academic performance.
                </p>
                <a href="TestCheckResult.aspx" class="inline-block bg-teal-600 text-white font-bold py-3 px-8 rounded-full shadow-lg transition-all duration-300 transform hover:scale-110 hover:bg-teal-700">
                    Check Your Result
                </a>
            </div>
        </main>

        <!-- About Section -->
        <section class="py-16">
            <div class="container mx-auto px-4">
                <div class="flex flex-col lg:flex-row items-center bg-white rounded-xl shadow-lg overflow-hidden">
                    <!-- Image -->
                    <div class="lg:w-1/2 w-full">
                        <img src="https://placehold.co/800x600/14b8a6/fff?text=SRMS+Dashboard" onerror="this.src='https://placehold.co/800x600/14b8a6/fff?text=SRMS+Dashboard'" alt="Dashboard view of SRMS" class="w-full h-full object-cover">
                    </div>
                    
                    <!-- Text Content -->
                    <div class="lg:w-1/2 w-full p-10 lg:p-16">
                        <h2 class="text-3xl font-bold text-gray-800 mb-6">About SRMS</h2>
                        <p class="text-gray-600 text-lg mb-4 leading-relaxed">
                            The Student Result Management System (SRMS) is a web-based project useful for college or school authorities to maintain the progress records of all students digitally. This platform deals with various activities that help to easily manage student academic performance.
                        </p>
                        <p class="text-gray-600 text-lg leading-relaxed">
                            Our primary aim is to automate the existing manual system with a digital solution, ensuring that valuable data can be stored securely for a longer period with easy access and manipulation.
                        </p>
                    </div>
                </div>
            </div>
        </section>

        <!-- Footer -->
        <footer class="bg-gray-800 text-white py-6">
            <div class="container mx-auto px-4 text-center">
                <p class="text-sm">© 2024 Copyright by SRMS. All Rights Reserved.</p>
            </div>
        </footer>

    </form>
</body>
</html>
