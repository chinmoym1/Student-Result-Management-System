<%@ Page Title="" Language="C#" MasterPageFile="~/Masterpage.Master" AutoEventWireup="true" CodeBehind="ManageComb.aspx.cs" Inherits="Result_management.ManageComb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .style1 {
            background-color: burlywood;
            width: 80%;
            height: 40%;
            margin-left: 10%;
            margin-top: 5%;
        }
    </style>
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     
    <table class="style1">
     <tr>
         <td colspan="2" align="center">
             <asp:Label ID="Label1" runat="server" Text="Delete Duplicate Data" Font-Bold="true" ForeColor="#FF6666" Font-Size="Larger"></asp:Label>
         </td>
         
     </tr>
     <tr>
         <td align="center">

         </td>
        
     </tr>
     <tr>
         <td>    <asp:GridView runat="server" DataSourceID="SqlDataSource1" ID="ctl01">
                   <columns>
                         <asp:CommandField ShowDeleteButton="True" ShowEditButton="True"></asp:CommandField>
                   </columns>
                 </asp:GridView>
        </td>
         <td>&nbsp;</td>
     </tr>
     <tr>
         <td>&nbsp;</td>
         <td>&nbsp;</td>
     </tr>
     <tr>
         <td>&nbsp;</td>
         <td>&nbsp;</td>
     </tr>

       <tr>
            <td>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:SRMSConnectionString11 %>" DeleteCommand="DELETE FROM [tblScombination] WHERE [ID] = @original_ID AND (([Stream] = @original_Stream) OR ([Stream] IS NULL AND @original_Stream IS NULL)) AND (([Subject] = @original_Subject) OR ([Subject] IS NULL AND @original_Subject IS NULL))" InsertCommand="INSERT INTO [tblScombination] ([Stream], [Subject]) VALUES (@Stream, @Subject)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tblScombination]" UpdateCommand="UPDATE [tblScombination] SET [Stream] = @Stream, [Subject] = @Subject WHERE [ID] = @original_ID AND (([Stream] = @original_Stream) OR ([Stream] IS NULL AND @original_Stream IS NULL)) AND (([Subject] = @original_Subject) OR ([Subject] IS NULL AND @original_Subject IS NULL))">
                    <DeleteParameters>
                        <asp:Parameter Name="original_ID" Type="Int32"></asp:Parameter>
                        <asp:Parameter Name="original_Stream" Type="String"></asp:Parameter>
                        <asp:Parameter Name="original_Subject" Type="String"></asp:Parameter>
                    </deleteparameters>
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
            </td>

        </tr>




    </table>

</asp:Content>
