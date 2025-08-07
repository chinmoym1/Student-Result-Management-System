<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="ManageSub.aspx.cs" Inherits="Result_management.ManageSub" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <!-- No custom styles needed here, as Tailwind CSS handles the design -->
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="space-y-8">
        <!-- Page Heading -->
        <div class="text-center md:text-left">
            <h2 class="text-3xl font-extrabold text-gray-800">Manage Subjects</h2>
            <p class="text-gray-600 mt-2">Update or delete existing subjects and their codes.</p>
        </div>

        <!-- GridView for Subject List -->
        <div class="bg-white p-6 rounded-xl shadow-lg overflow-x-auto">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateSelectButton="False" EmptyDataText="Record not Found Try Again" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CssClass="min-w-full table-auto border-collapse" HeaderStyle-CssClass="bg-gray-100 border-b border-gray-200 text-left text-xs font-semibold text-gray-600 uppercase tracking-wider" RowStyle-CssClass="border-b border-gray-200" CellPadding="8">
                <Columns>
                    <asp:TemplateField HeaderText="Select">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" Text="Select" CommandName="Select" CssClass="text-teal-600 hover:text-teal-800 font-medium"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
        </div>

        <!-- Panel for Update/Delete -->
        <asp:Panel ID="Panel1" runat="server" Visible="False" CssClass="bg-white p-8 rounded-xl shadow-lg w-full max-w-lg mx-auto space-y-6">
            <h3 class="text-2xl font-bold text-teal-800 text-center">Subject Details</h3>
            
            <table class="w-full">
                <tr class="mb-4">
                    <td class="pr-4 py-2">
                        <asp:Label ID="Label2" runat="server" Text="Subject ID" CssClass="font-medium text-gray-700"></asp:Label>
                    </td>
                    <td class="py-2">
                        <asp:Label ID="Label4" runat="server" Text="Label" CssClass="text-gray-900"></asp:Label>
                    </td>
                </tr>
                <tr class="mb-4">
                    <td class="pr-4 py-2">
                        <asp:Label ID="Label3" runat="server" Text="Subject Name" CssClass="font-medium text-gray-700"></asp:Label>
                    </td>
                    <td class="py-2">
                        <asp:TextBox ID="TextBox1" runat="server" CssClass="w-full px-4 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-teal-500 transition-colors duration-200"></asp:TextBox>
                    </td>
                </tr>
                <tr class="mb-4">
                    <td class="pr-4 py-2">
                        <asp:Label ID="Label5" runat="server" Text="Subject Code" CssClass="font-medium text-gray-700"></asp:Label>
                    </td>
                    <td class="py-2">
                        <asp:TextBox ID="TextBox2" runat="server" CssClass="w-full px-4 py-2 border border-gray-300 rounded-lg focus:outline-none focus:ring-2 focus:ring-teal-500 transition-colors duration-200"></asp:TextBox>
                    </td>
                </tr>
            </table>

            <div class="flex justify-end space-x-4 mt-6">
                <asp:Button ID="Button1" runat="server" Text="Update" OnClick="Button1_Click" CssClass="bg-green-500 text-white font-semibold py-2 px-6 rounded-lg shadow-md hover:bg-green-600 transition-colors duration-200" />
                <asp:Button ID="Button2" runat="server" Text="Delete" OnClick="Button2_Click" CssClass="bg-red-500 text-white font-semibold py-2 px-6 rounded-lg shadow-md hover:bg-red-600 transition-colors duration-200" />
            </div>
        </asp:Panel>
    </div>
</asp:Content>
