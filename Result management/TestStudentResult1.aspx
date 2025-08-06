<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TestStudentResult1.aspx.cs" Inherits="Result_management.TestStudentResult1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="CSS/StudentResult1.css" />
    <title>Semester1 Result</title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Panel ID="Panel1" runat="server">
   <div class="heading" align="center">Student Result Management System</div>

     <div class="chead" style="background-color:#057C7C  !important">
	<div class="panel-heading" style="padding-bottom:17px;">
    <div style="float:left;"><img src="images/logo_bbmku.png"  style="height:80px;width:104px;" /></div>
    <div style="text-align:center;font-size:21px;text-decoration: underline; font-weight:bold;color:#fff !important;margin-top:19px;">Binod Bihari Mahto Koyalanchal University, Dhanbad</div> 
	<h4 style="text-align:center;color:#fff !important;">Result</h4>
	<!-- ngIf: form.student_type -->
	<!-- ngIf: form.course=='UG' -->
    <div ng-if="form.course=='UG'" style="text-align:center;margin-top:-7px;margin-left: 5%;color:#fff !important;font-size:15px" class="ng-scope">
	<span style="color:#fff !important;" class="ng-binding">Bachelor of Computer Application (B.C.A) CBCS , </span>
	<span style="color:#fff !important;" class="ng-binding">Semester - I  </span>
	<!-- <span style="color:#fff !important;"> Examination {{form.held_month_1}} {{form.held_year_1}}</span> -->
	<!-- ngIf: (form.remarks!='RGX') -->
    <span style="color:#fff !important;" ng-if="(form.remarks!='RGX')" class="ng-binding ng-scope">( 2020-23 ) Examination </span>
    <!-- end ngIf: (form.remarks!='RGX') --><!-- ngIf: (form.session=='2015-18' && form.semester=='IV') || (form.session=='2018-21' && form.semester=='III') || (form.session=='2019-22' && form.semester=='I') || (form.remarks!='RGX' && form.semester!='V') -->
    <span ng-if="(form.session=='2015-18' &amp;&amp; form.semester=='IV') || (form.session=='2018-21' &amp;&amp; form.semester=='III') || (form.session=='2019-22' &amp;&amp; form.semester=='I') || (form.remarks!='RGX' &amp;&amp; form.semester!='V')" class="ng-scope"></span>
    <!-- end ngIf: (form.session=='2015-18' && form.semester=='IV') || (form.session=='2018-21' && form.semester=='III') || (form.session=='2019-22' && form.semester=='I') || (form.remarks!='RGX' && form.semester!='V') -->
	<!-- ngIf: (form.remarks=='RGX') -->		
	</div><!-- end ngIf: form.course=='UG' -->
	</div>
	</div>

            <table>
                 <tr>
                    <th></th>
                    <th></th>
                     
                </tr>
                 <tr>
                    <td>Roll No</td>
                    <td>
                        <asp:Label ID="lblroll" runat="server" Text="" Font-Bold="True" ForeColor="Black" Font-Size="Medium"></asp:Label></td>
                 </tr>
                <tr>
                    <td>Name</td>
                    <td><asp:Label ID="lblname" runat="server" Text="" Font-Bold="True" ForeColor="Black" Font-Size="Medium"></asp:Label></td>
                    
                </tr>
                <tr>
                    <td>Stream</td>
                   <td> <asp:Label ID="lblstream" runat="server" Text="" Font-Bold="True" ForeColor="Black" Font-Size="Medium"></asp:Label></td>                  
                    
                </tr>
                <tr>
                    <th>Subject Name</th>
                    <th>Marks</th>
                    
                </tr>
               <tr>
                    <td>Core-I:Programming Fundamentals using C/C++</td>
                    <td>
                        <asp:Label ID="lblcore1" runat="server" Text=""></asp:Label></td>                    
                    
                    
                </tr>
                 <tr>
                    <td>Core-II:Computer System Architecture</td>
                   <td>
                       <asp:Label ID="lblcore2" runat="server" Text=""></asp:Label></td>
                   
                    
                </tr>
                 <tr>
                     <td>AECC-1:Environmental Science</td>
                     <td>
                         <asp:Label ID="lblaecc1" runat="server" Text=""></asp:Label></td>
                  
                  
                </tr>
                 <tr>
                     <td>GE-1:General Elective</td>
                    <td>
                        <asp:Label ID="lblge1" runat="server" Text=""></asp:Label></td>
                   
                </tr>
                <tr>
                    <th></th>
                    <th></th>
                </tr>
                <tr>
                    <td>Total Marks</td>
                    <td>
                        <asp:Label ID="lbltotal" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                    <td>Percentage</td>
                    <td>
                        <asp:Label ID="lblper" runat="server" Text=""></asp:Label></td> 
                </tr>
               

            </table>
    </asp:Panel>

    </form>
</body>
</html>
