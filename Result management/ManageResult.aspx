<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="ManageResult.aspx.cs" Inherits="Result_management.ManageResult" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- No custom styles needed here, as Tailwind CSS handles the design -->
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="space-y-8">
        <!-- Page Heading -->
        <div class="text-center md:text-left">
            <h2 class="text-3xl font-extrabold text-gray-800">Student Result Details</h2>
            <p class="text-gray-600 mt-2">View and manage results for Semester 1.</p>
        </div>

        <!-- GridView for Student Results -->
        <div class="bg-white p-6 rounded-xl shadow-lg overflow-x-auto">
            <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1"
                CssClass="min-w-full table-auto border-collapse"
                HeaderStyle-CssClass="bg-gray-100 border-b border-gray-200 text-left text-xs font-semibold text-gray-600 uppercase tracking-wider"
                RowStyle-CssClass="border-b border-gray-200"
                CellPadding="8">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ControlStyle-CssClass="text-red-600 hover:text-red-800 font-medium mr-4" />
                </Columns>
            </asp:GridView>
        </div>

        <!-- SQL Data Source Control -->
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:SRMSConnectionString13 %>" DeleteCommand="DELETE FROM [testSem1] WHERE [Rollno] = @original_Rollno AND (([StudentName] = @original_StudentName) OR ([StudentName] IS NULL AND @original_StudentName IS NULL)) AND (([StreamName] = @original_StreamName) OR ([StreamName] IS NULL AND @original_StreamName IS NULL)) AND (([Core1] = @original_Core1) OR ([Core1] IS NULL AND @original_Core1 IS NULL)) AND (([Core2] = @original_Core2) OR ([Core2] IS NULL AND @original_Core2 IS NULL)) AND (([AECC1] = @original_AECC1) OR ([AECC1] IS NULL AND @original_AECC1 IS NULL)) AND (([GE1] = @original_GE1) OR ([GE1] IS NULL AND @original_GE1 IS NULL)) AND (([Total] = @original_Total) OR ([Total] IS NULL AND @original_Total IS NULL)) AND (([Percentage] = @original_Percentage) OR ([Percentage] IS NULL AND @original_Percentage IS NULL))" InsertCommand="INSERT INTO [testSem1] ([Rollno], [StudentName], [StreamName], [Core1], [Core2], [AECC1], [GE1], [Total], [Percentage]) VALUES (@Rollno, @StudentName, @StreamName, @Core1, @Core2, @AECC1, @GE1, @Total, @Percentage)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [testSem1]" UpdateCommand="UPDATE [testSem1] SET [StudentName] = @StudentName, [StreamName] = @StreamName, [Core1] = @Core1, [Core2] = @Core2, [AECC1] = @AECC1, [GE1] = @GE1, [Total] = @Total, [Percentage] = @Percentage WHERE [Rollno] = @original_Rollno AND (([StudentName] = @original_StudentName) OR ([StudentName] IS NULL AND @original_StudentName IS NULL)) AND (([StreamName] = @original_StreamName) OR ([StreamName] IS NULL AND @original_StreamName IS NULL)) AND (([Core1] = @original_Core1) OR ([Core1] IS NULL AND @original_Core1 IS NULL)) AND (([Core2] = @original_Core2) OR ([Core2] IS NULL AND @original_Core2 IS NULL)) AND (([AECC1] = @original_AECC1) OR ([AECC1] IS NULL AND @original_AECC1 IS NULL)) AND (([GE1] = @original_GE1) OR ([GE1] IS NULL AND @original_GE1 IS NULL)) AND (([Total] = @original_Total) OR ([Total] IS NULL AND @original_Total IS NULL)) AND (([Percentage] = @original_Percentage) OR ([Percentage] IS NULL AND @original_Percentage IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_Rollno" Type="Int32" />
                    <asp:Parameter Name="original_StudentName" Type="String" />
                    <asp:Parameter Name="original_StreamName" Type="String" />
                    <asp:Parameter Name="original_Core1" Type="String" />
                    <asp:Parameter Name="original_Core2" Type="String" />
                    <asp:Parameter Name="original_AECC1" Type="String" />
                    <asp:Parameter Name="original_GE1" Type="String" />
                    <asp:Parameter Name="original_Total" Type="String" />
                    <asp:Parameter Name="original_Percentage" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Rollno" Type="Int32" />
                    <asp:Parameter Name="StudentName" Type="String" />
                    <asp:Parameter Name="StreamName" Type="String" />
                    <asp:Parameter Name="Core1" Type="String" />
                    <asp:Parameter Name="Core2" Type="String" />
                    <asp:Parameter Name="AECC1" Type="String" />
                    <asp:Parameter Name="GE1" Type="String" />
                    <asp:Parameter Name="Total" Type="String" />
                    <asp:Parameter Name="Percentage" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="StudentName" Type="String" />
                    <asp:Parameter Name="StreamName" Type="String" />
                    <asp:Parameter Name="Core1" Type="String" />
                    <asp:Parameter Name="Core2" Type="String" />
                    <asp:Parameter Name="AECC1" Type="String" />
                    <asp:Parameter Name="GE1" Type="String" />
                    <asp:Parameter Name="Total" Type="String" />
                    <asp:Parameter Name="Percentage" Type="String" />
                    <asp:Parameter Name="original_Rollno" Type="Int32" />
                    <asp:Parameter Name="original_StudentName" Type="String" />
                    <asp:Parameter Name="original_StreamName" Type="String" />
                    <asp:Parameter Name="original_Core1" Type="String" />
                    <asp:Parameter Name="original_Core2" Type="String" />
                    <asp:Parameter Name="original_AECC1" Type="String" />
                    <asp:Parameter Name="original_GE1" Type="String" />
                    <asp:Parameter Name="original_Total" Type="String" />
                    <asp:Parameter Name="original_Percentage" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
    </div>
</asp:Content>
