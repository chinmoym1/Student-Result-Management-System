# Student Result Management System

This project is a **Student Result Management System** developed using **ASP.NET** with **C#**, **Visual Studio 2022**, and **Microsoft SQL Server**. It is designed to efficiently manage student registration, result entry, and result viewing for educational institutions.

## Features

- **Student Registration**: Allows students to register with personal details.
- **Result Entry**: Faculty members can enter student grades for different courses.
- **Result Viewing**: Students can view their results after they are entered.
- **Admin Panel**: Admins can manage students, faculty, courses, and results.
- **Role-based Authentication**: Admin, Faculty, and Students have different access levels.

## Technologies Used

- **Frontend**: ASP.NET MVC, HTML5, CSS3, JavaScript
- **Backend**: C#
- **Database**: Microsoft SQL Server
- **IDE**: Visual Studio 2022
- **Authentication**: ASP.NET Identity for role management
- **Web Server**: IIS Express (for development)

## Prerequisites

Before you start, ensure you have the following installed:

- **Visual Studio 2022** or higher
- **Microsoft SQL Server** (any recent version like 2019 or 2022)
- **.NET 6.0 SDK** or higher (depending on the version you're using)

## Installation

### 1. Clone the Repository

Clone this repository to your local machine:

```bash
git clone https://github.com/yourusername/student-result-management.git
```
### 2. Open the Project in Visual Studio
Open Visual Studio 2022.

Click on File > Open > Project/Solution and select the .sln file located in the project folder.

### 3. Configure the Database
Create a new SQL Server database using SQL Server Management Studio (SSMS).

Run the SQL scripts (provided in the Database folder) to set up the necessary tables.

Example SQL to create tables:
```bash
CREATE TABLE Students (
    StudentId INT PRIMARY KEY IDENTITY(1,1),
    FullName NVARCHAR(100),
    DateOfBirth DATE,
    Email NVARCHAR(100)
);

CREATE TABLE Results (
    ResultId INT PRIMARY KEY IDENTITY(1,1),
    StudentId INT FOREIGN KEY REFERENCES Students(StudentId),
    CourseName NVARCHAR(100),
    Marks INT
);
```
### 4. Update the Database Connection String
Open the web.config file located in the root directory.

Modify the connectionStrings section with your database details:
```
<connectionStrings>
    <add name="DefaultConnection" connectionString="Server=YOUR_SERVER_NAME;Database=YOUR_DB_NAME;Integrated Security=True" providerName="System.Data.SqlClient" />
</connectionStrings>
```

Replace YOUR_SERVER_NAME and YOUR_DB_NAME with your actual server and database names.

### 5. Build and Run the Project
In Visual Studio, build the solution by selecting Build > Build Solution.

Press F5 or click Start to run the application.

The application will launch in your browser, and you can start using it locally.

Project Structure
The project is organized as follows:
```StudentResultManagement/
│
├── Controllers/            # Controllers for handling requests
│   ├── HomeController.cs   # Controller for home page
│   └── ResultController.cs # Controller for result-related operations
│
├── Models/                 # Data models for entities
│   ├── Student.cs          # Model for student data
│   └── Result.cs           # Model for student results
│
├── Views/                  # Views for displaying pages
│   ├── Home/               # Views related to the homepage
│   └── Result/             # Views related to results
│
├── Scripts/                # JavaScript files for front-end functionality
│   └── custom.js           # Custom JavaScript code
│
├── Styles/                 # CSS files for styling
│   └── custom.css          # Custom CSS styles
│
├── Database/               # SQL scripts to set up the database
│
├── appsettings.json        # Configuration settings for the app
└── web.config              # Web application configuration file
```

### Acknowledgments
Special thanks to the ASP.NET Documentation for providing resources and examples.
