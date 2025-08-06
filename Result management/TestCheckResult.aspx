<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TestCheckResult.aspx.cs" Inherits="Result_management.TestCheckResult" %>

<!DOCTYPE html>

<!DOCTYPE html>
	
<html>
	
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Student Result</title>
    <link rel="stylesheet" href="CSS/CheckResult.css"/>
</head>	
	<body>
	<div class="heading"><h1>Check your Result</h1>
		<div class="hlink"><a href="default.aspx">Home</a> </div>
	</div>
		
	<form runat="server" submitdisabledcontrols="False" enableviewstate="True" visible="True">
		<asp:Label ID="Label1" runat="server" Text="Roll No." Font-Bold="True"></asp:Label>
		<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
<%--		<input type="text" id="Roll No." name="name" placeholder="Enter your Roll" required>--%>

		<!-- <label for="email">Email</label>
		<input type="text" id="email" name="email" placeholder="Enter your email" required>

		<label for="phone">Phone</label>
		<input type="text" id="phone" name="phone" placeholder="Enter your phone number" required>
 -->
		<!--<label for="course">Course</label>
		<select id="course" name="course" required>
			<option value="">Select a course</option>
			<option value="BSc">BCA</option>
			<option value="BA">BSC</option>
			<option value="BCom">BCom</option>
            <option value="BCom">BA</option>
		</select>-->

		<asp:Label ID="Label2" runat="server" Text="Semester" Font-Bold="True"></asp:Label>
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
            <asp:ListItem>Select a Semester</asp:ListItem>
            <asp:ListItem Value="1">Semester-1</asp:ListItem>
            <asp:ListItem Value="2">Semester-2</asp:ListItem>
            <asp:ListItem Value="3">Semester-3</asp:ListItem>
            <asp:ListItem Value="4">Semester-4</asp:ListItem>
            <asp:ListItem Value="5">Semester-5</asp:ListItem>
            <asp:ListItem Value="6">Semester-6</asp:ListItem>
        </asp:DropDownList>
		

        <asp:Button ID="Button1" runat="server" Text="Get Result" OnClick="Button1_Click" />
        <asp:Label ID="Label3" runat="server" Text="."></asp:Label>
		
	</form>
</body>
</html>
