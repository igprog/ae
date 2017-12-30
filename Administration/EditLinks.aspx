<%@ Page Title="" Language="C#" MasterPageFile="~/Administration/Administration.master" AutoEventWireup="true" CodeFile="EditLinks.aspx.cs" Inherits="Administration_EditLinks" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

  <div style="background-color:Silver">
       <h4>Linkovi</h4>
        <label>Link Kod: </label>
        <asp:TextBox ID="txtLinkCode" runat="server"></asp:TextBox>
        <label>Naziv: </label>
        <asp:TextBox ID="txtTitle" runat="server"></asp:TextBox>
         <label>Url: </label>
        <asp:TextBox ID="txtLinkUrl" runat="server"></asp:TextBox>
        <label>Pozicija linka: </label>
        <asp:TextBox ID="txtLinkPosition" runat="server"></asp:TextBox>
         <label>Redosljed: </label>
        <asp:TextBox ID="txtLinkOrder" runat="server"></asp:TextBox>
         <asp:Label ID="lblIsVisible" runat="server" Text="Vidljiv" AssociatedControlID="cbIsVisible"></asp:Label>
        <asp:CheckBox ID="cbIsVisible" runat="server" />
        <label>Roditeljska grupa: </label>
        <asp:TextBox ID="txtParent" runat="server"></asp:TextBox>
        <asp:Button ID="btnInsertLink" runat="server" Text="Spremi" onclick="btnInsertLink_Click" />

           <asp:GridView ID="gvLinks" runat="server" AutoGenerateColumns="False" 
               CellPadding="4" DataKeyNames="IdLink" DataSourceID="SqlDataSource2" 
               ForeColor="#333333" GridLines="None" AllowSorting="True" 
               ShowHeaderWhenEmpty="True">

               <AlternatingRowStyle BackColor="White" />
               <Columns>
                   <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                   <asp:BoundField DataField="IdLink" HeaderText="IdLink" ReadOnly="True" 
                       SortExpression="IdLink" />
                   <asp:BoundField DataField="LinkCode" HeaderText="LinkCode" 
                       SortExpression="LinkCode" />
                   <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                    <asp:BoundField DataField="LinkUrl" HeaderText="LinkUrl" SortExpression="LinkUrl" />
                   <asp:BoundField DataField="Position" HeaderText="Position" 
                       SortExpression="Position" />
                   <asp:BoundField DataField="IdParent" HeaderText="IdParent" 
                       SortExpression="IdParent" />
                   <asp:BoundField DataField="LinkOrder" HeaderText="LinkOrder" 
                       SortExpression="LinkOrder" />
                   <asp:CheckBoxField DataField="IsVisible" HeaderText="IsVisible" 
                       SortExpression="IsVisible" />
               </Columns>
               <EditRowStyle BackColor="#2461BF" />
               <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
               <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
               <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
               <RowStyle BackColor="#EFF3FB" />
               <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
               <SortedAscendingCellStyle BackColor="#F5F7FB" />
               <SortedAscendingHeaderStyle BackColor="#6D95E1" />
               <SortedDescendingCellStyle BackColor="#E9EBEF" />
               <SortedDescendingHeaderStyle BackColor="#4870BE" />

           </asp:GridView>
           <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
               ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
               DeleteCommand="DELETE FROM [Links] WHERE [IdLink] = @IdLink" 
               InsertCommand="INSERT INTO [Links] ([IdLink], [LinkCode], [Title], [LinkUrl], [Position], [IdParent], [LinkOrder], [IsVisible]) VALUES (@IdLink, @LinkCode, @Title, @LinkUrl, @Position, @IdParent, @LinkOrder, @IsVisible)" 
               SelectCommand="SELECT * FROM [Links]" 
               
               UpdateCommand="UPDATE [Links] SET [LinkCode] = @LinkCode, [Title] = @Title, [LinkUrl] = @LinkUrl, [Position] = @Position, [LinkOrder] = @LinkOrder, [IsVisible] = @IsVisible WHERE [IdLink] = @IdLink">
               <DeleteParameters>
                   <asp:Parameter Name="IdLink" Type="Object" />
               </DeleteParameters>
               <InsertParameters>
                   <asp:Parameter Name="IdLink" Type="Object" />
                   <asp:Parameter Name="LinkCode" Type="String" />
                   <asp:Parameter Name="Title" Type="String" />
                   <asp:Parameter Name="LinkUrl" Type="String" />
                   <asp:Parameter Name="Position" Type="String" />
                   <asp:Parameter Name="IdParent" Type="Object" />
                   <asp:Parameter Name="LinkOrder" Type="Int32" />
                   <asp:Parameter Name="IsVisible" Type="Boolean" />
               </InsertParameters>
               <UpdateParameters>
                   <asp:Parameter Name="LinkCode" Type="String" />
                   <asp:Parameter Name="Title" Type="String" />
                   <asp:Parameter Name="LinkUrl" Type="String" />
                   <asp:Parameter Name="Position" Type="String" />
                   <asp:Parameter Name="IdParent" Type="Object" />
                   <asp:Parameter Name="LinkOrder" Type="Int32" />
                   <asp:Parameter Name="IsVisible" Type="Boolean" />
                   <asp:Parameter Name="IdLink" Type="Object" />
               </UpdateParameters>
           </asp:SqlDataSource>
       </div>

</asp:Content>

