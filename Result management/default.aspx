<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Result_management.WebForm1" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>student result management system</title>
    <link rel="stylesheet" href="CSS/Style.css" />
</head>

<body>
    <form id="form1" runat="server"></form>
    <div class="title"> Student Result Management System</div>
    <div>
        <ul>
            <li class="button"><a href="default.aspx" >Home</a></li>
            <%--<li class="button"><a href="CheckResult.aspx" target="_blank">Result</a></li>--%>
            <li class="button"><a href="TestCheckResult.aspx" target="_blank">Result</a></li>
            <li class="button"><a href="admin_login.aspx" target="_blank">Login</a></li>
        </ul>
    </div>
   <!--  <div >
       <marquee><h3> Welcome to SRMS</h3></marquee>
    </div> -->
    <div class="twoprj">
        <div class="img1"><img src="images/img2.jpg"></div>
        <div class="par">
            <p>
            Student Result Management System(SRMS) is a web based project which is useful for the college or school
            authorities to maintain the progress records of all the students digitally.Mainly in various places all 
            the activities are done manually,which are very hectic and time consuming process.SRMS deals with various
            activities which helps to easily manage the student’s academic performance.</p>
            <p>
            The aim is to automate the existing manual system by the help of digital software, fulfilling the requirements,
            so that the valuable data can be stored for a longer period with easy accessing and manipulation of the same.
             
            </p>
        </div>
    </div>
    <br />
    <br />
    <br />
    <!-- <div class="footer">contact us</div> -->
    <div class="copyright"> 
       <h3> © 2023 Copyright by SRMS. All Rights Reserved. </h3>
    </div>

</body>

</html>