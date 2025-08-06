<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="ManageStudent.aspx.cs" Inherits="Result_management.ManageStudent" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h2> Delete And Update Student Details</h2>
    <br />
    <center>
        <br />
        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AllowPaging="True" BackColor="#ACD968" BorderStyle="Inset" BorderColor="Black">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True"></asp:CommandField>
            </Columns>
        </asp:GridView>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:SRMSConnectionString %>" DeleteCommand="DELETE FROM [tblstudent] WHERE [Rollno] = @original_Rollno AND (([StdName] = @original_StdName) OR ([StdName] IS NULL AND @original_StdName IS NULL)) AND (([Gender] = @original_Gender) OR ([Gender] IS NULL AND @original_Gender IS NULL)) AND (([DOB] = @original_DOB) OR ([DOB] IS NULL AND @original_DOB IS NULL)) AND (([Stream] = @original_Stream) OR ([Stream] IS NULL AND @original_Stream IS NULL))" InsertCommand="INSERT INTO [tblstudent] ([StdName], [Gender], [DOB], [Stream]) VALUES (@StdName, @Gender, @DOB, @Stream)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tblstudent]" UpdateCommand="UPDATE [tblstudent] SET [StdName] = @StdName, [Gender] = @Gender, [DOB] = @DOB, [Stream] = @Stream WHERE [Rollno] = @original_Rollno AND (([StdName] = @original_StdName) OR ([StdName] IS NULL AND @original_StdName IS NULL)) AND (([Gender] = @original_Gender) OR ([Gender] IS NULL AND @original_Gender IS NULL)) AND (([DOB] = @original_DOB) OR ([DOB] IS NULL AND @original_DOB IS NULL)) AND (([Stream] = @original_Stream) OR ([Stream] IS NULL AND @original_Stream IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_Rollno" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="original_StdName" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_Gender" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_DOB" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_Stream" Type="String"></asp:Parameter>
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="StdName" Type="String"></asp:Parameter>
                <asp:Parameter Name="Gender" Type="String"></asp:Parameter>
                <asp:Parameter Name="DOB" Type="String"></asp:Parameter>
                <asp:Parameter Name="Stream" Type="String"></asp:Parameter>
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="StdName" Type="String"></asp:Parameter>
                <asp:Parameter Name="Gender" Type="String"></asp:Parameter>
                <asp:Parameter Name="DOB" Type="String"></asp:Parameter>
                <asp:Parameter Name="Stream" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_Rollno" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="original_StdName" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_Gender" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_DOB" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_Stream" Type="String"></asp:Parameter>
            </UpdateParameters>
        </asp:SqlDataSource>
    </center>



</asp:Content>
