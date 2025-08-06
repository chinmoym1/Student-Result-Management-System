<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="manageteststud.aspx.cs" Inherits="Result_management.manageteststud" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    td {
        /*background-color: burlywood;*/
        background-color:#8ccd4b;

    }
    th{
        background-color:tan;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <h2> Delete And Update Student Details</h2>
    <br />
    <center>
        <br />
        <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AllowPaging="True">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True"></asp:CommandField>
            </Columns>
        </asp:GridView>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:SRMSConnectionString12 %>" DeleteCommand="DELETE FROM [teststud] WHERE [Rollno] = @original_Rollno AND (([Stdname] = @original_Stdname) OR ([Stdname] IS NULL AND @original_Stdname IS NULL)) AND (([Gender] = @original_Gender) OR ([Gender] IS NULL AND @original_Gender IS NULL)) AND (([DOB] = @original_DOB) OR ([DOB] IS NULL AND @original_DOB IS NULL)) AND (([Stream] = @original_Stream) OR ([Stream] IS NULL AND @original_Stream IS NULL))" InsertCommand="INSERT INTO [teststud] ([Stdname], [Gender], [DOB], [Stream]) VALUES (@Stdname, @Gender, @DOB, @Stream)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [teststud]" UpdateCommand="UPDATE [teststud] SET [Stdname] = @Stdname, [Gender] = @Gender, [DOB] = @DOB, [Stream] = @Stream WHERE [Rollno] = @original_Rollno AND (([Stdname] = @original_Stdname) OR ([Stdname] IS NULL AND @original_Stdname IS NULL)) AND (([Gender] = @original_Gender) OR ([Gender] IS NULL AND @original_Gender IS NULL)) AND (([DOB] = @original_DOB) OR ([DOB] IS NULL AND @original_DOB IS NULL)) AND (([Stream] = @original_Stream) OR ([Stream] IS NULL AND @original_Stream IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_Rollno" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="original_Stdname" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_Gender" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_DOB" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_Stream" Type="String"></asp:Parameter>
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Stdname" Type="String"></asp:Parameter>
                <asp:Parameter Name="Gender" Type="String"></asp:Parameter>
                <asp:Parameter Name="DOB" Type="String"></asp:Parameter>
                <asp:Parameter Name="Stream" Type="String"></asp:Parameter>
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Stdname" Type="String"></asp:Parameter>
                <asp:Parameter Name="Gender" Type="String"></asp:Parameter>
                <asp:Parameter Name="DOB" Type="String"></asp:Parameter>
                <asp:Parameter Name="Stream" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_Rollno" Type="Int32"></asp:Parameter>
                <asp:Parameter Name="original_Stdname" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_Gender" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_DOB" Type="String"></asp:Parameter>
                <asp:Parameter Name="original_Stream" Type="String"></asp:Parameter>
            </UpdateParameters>
        </asp:SqlDataSource>
        </center>
       

</asp:Content>