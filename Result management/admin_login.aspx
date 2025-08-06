<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_login.aspx.cs" Inherits="Result_management.login" %>

<!DOCTYPE html>
<html>
<head runat="server">
    <title>Login</title>
    <link rel="stylesheet" href="CSS/admin_login.css" />

</head>
<body>
    <form id="form1" runat="server">
        <div class="login-container">
        <h2>Admin Login</h2>
   
            <asp:TextBox ID="TextBox1" runat="server"  placeholder="UserID"></asp:TextBox>
            <asp:TextBox ID="TextBox2" runat="server" placeholder="Password" TextMode="Password" ></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" height="34px" font-size=15px  Font-Bold="True" BackColor="#C8A3A8" Width="500px" />
            <input type="checkbox" onchange="document.getElementById('TextBox2').type=this.checked ? 'text' : 'password'" />show password
            <asp:Label ID="Label1" runat="server" ForeColor="#FFFF66"></asp:Label>
        </div>
    </form>
</body>
</html>
