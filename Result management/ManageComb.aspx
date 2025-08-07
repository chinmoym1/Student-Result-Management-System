<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="ManageComb.aspx.cs" Inherits="Result_management.ManageComb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- No custom styles needed here, as Tailwind CSS handles the design -->
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="space-y-8">
        <!-- Page Heading -->
        <div class="text-center md:text-left">
            <h2 class="text-3xl font-extrabold text-gray-800">Manage Subject Combinations</h2>
            <p class="text-gray-600 mt-2">Edit or delete subject combinations for different streams.</p>
        </div>

        <!-- GridView for Subject Combinations -->
        <div class="bg-white p-6 rounded-xl shadow-lg overflow-x-auto">
            <asp:GridView runat="server" DataSourceID="SqlDataSource1" ID="ctl01"
                CssClass="min-w-full table-auto border-collapse"
                HeaderStyle-CssClass="bg-gray-100 border-b border-gray-200 text-left text-xs font-semibold text-gray-600 uppercase tracking-wider"
                RowStyle-CssClass="border-b border-gray-200"
                EditRowStyle-CssClass="bg-gray-50"
                CellPadding="8">
                <columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True"
                        ControlStyle-CssClass="text-teal-600 hover:text-teal-800 font-medium mr-4"
                        ItemStyle-CssClass="whitespace-nowrap"/>
                </columns>
            </asp:GridView>

            <!-- SQL Data Source Control (invisible to the user) -->
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:SRMSConnectionString11 %>" DeleteCommand="DELETE FROM [tblScombination] WHERE [ID] = @original_ID AND (([Stream] = @original_Stream) OR ([Stream] IS NULL AND @original_Stream IS NULL)) AND (([Subject] = @original_Subject) OR ([Subject] IS NULL AND @original_Subject IS NULL))" InsertCommand="INSERT INTO [tblScombination] ([Stream], [Subject]) VALUES (@Stream, @Subject)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tblScombination]" UpdateCommand="UPDATE [tblScombination] SET [Stream] = @Stream, [Subject] = @Subject WHERE [ID] = @original_ID AND (([Stream] = @original_Stream) OR ([Stream] IS NULL AND @original_Stream IS NULL)) AND (([Subject] = @original_Subject) OR ([Subject] IS NULL AND @original_Subject IS NULL))">
                <DeleteParameters>
                    <asp:Parameter Name="original_ID" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="original_Stream" Type="String"></asp:Parameter>
                    <asp:Parameter Name="original_Subject" Type="String"></asp:Parameter>
                </DeleteParameters>
                <insertparameters>
                    <asp:Parameter Name="Stream" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Subject" Type="String"></asp:Parameter>
                </insertparameters>
                <updateparameters>
                    <asp:Parameter Name="Stream" Type="String"></asp:Parameter>
                    <asp:Parameter Name="Subject" Type="String"></asp:Parameter>
                    <asp:Parameter Name="original_ID" Type="Int32"></asp:Parameter>
                    <asp:Parameter Name="original_Stream" Type="String"></asp:Parameter>
                    <asp:Parameter Name="original_Subject" Type="String"></asp:Parameter>
                </updateparameters>
            </asp:SqlDataSource>
        </div>
    </div>
</asp:Content>
