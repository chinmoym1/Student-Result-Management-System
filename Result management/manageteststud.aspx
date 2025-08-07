<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="manageteststud.aspx.cs" Inherits="Result_management.manageteststud" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- No custom styles needed here, as Tailwind CSS handles the design -->
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="space-y-8">
        <!-- Page Heading -->
        <div class="text-center md:text-left">
            <h2 class="text-3xl font-extrabold text-gray-800">Manage Student Details</h2>
            <p class="text-gray-600 mt-2">Update or delete student records from the list below.</p>
        </div>

        <!-- GridView for Student List -->
        <div class="bg-white p-6 rounded-xl shadow-lg overflow-x-auto">
            <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1" AllowPaging="True"
                CssClass="min-w-full table-auto border-collapse"
                HeaderStyle-CssClass="bg-gray-100 border-b border-gray-200 text-left text-xs font-semibold text-gray-600 uppercase tracking-wider"
                RowStyle-CssClass="border-b border-gray-200"
                EditRowStyle-CssClass="bg-gray-50"
                CellPadding="8">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True"
                        ControlStyle-CssClass="text-teal-600 hover:text-teal-800 font-medium mr-4"
                        ItemStyle-CssClass="whitespace-nowrap"/>
                </Columns>
            </asp:GridView>
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
        </div>
    </div>
</asp:Content>
