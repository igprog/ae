<%@ Page Title="" Language="C#" MasterPageFile="~/Administration/Administration.master" AutoEventWireup="true" CodeFile="EditGallery.aspx.cs" Inherits="Administration_EditGallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div>
<h4>Edit Gallery</h4>
    <asp:FileUpload ID="fuGallery" runat="server" />
 
    <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
    <br />
    <asp:Label ID="lblIsVisible" runat="server" Text="Vidljiv" AssociatedControlID="cbIsVisible"></asp:Label>
    <asp:CheckBox ID="cbIsVisible" runat="server" />
    <br />
    <asp:Label ID="lblOrder" runat="server" Text="Redosljed" AssociatedControlID="txtOrder"></asp:Label>
    <asp:TextBox ID="txtOrder" runat="server" Width="20"></asp:TextBox>
    <br />
    <asp:Button ID="btnSave" runat="server" Text="Spremi" OnClick="Save" />

    <br />
    <hr />
    <asp:GridView ID="gvGallery" runat="server" AutoGenerateColumns="False" 
        BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" 
        CellPadding="4" DataKeyNames="IdGallery" DataSourceID="SqlDataSource1" 
        ForeColor="Black" GridLines="Horizontal" ShowHeaderWhenEmpty="True" 
        AllowSorting="True">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="IdGallery" HeaderText="IdGallery" ReadOnly="True" 
                SortExpression="IdGallery" />
            <asp:BoundField DataField="Image" HeaderText="Image" SortExpression="Image" />
            <asp:CheckBoxField DataField="IsVisible" HeaderText="IsVisible" 
                SortExpression="IsVisible" />
            <asp:BoundField DataField="ImageOrder" HeaderText="ImageOrder" 
                SortExpression="ImageOrder" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
        <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
        <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F7F7F7" />
        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
        <SortedDescendingCellStyle BackColor="#E5E5E5" />
        <SortedDescendingHeaderStyle BackColor="#242121" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        DeleteCommand="DELETE FROM [Gallery] WHERE [IdGallery] = @IdGallery" 
        InsertCommand="INSERT INTO [Gallery] ([IdGallery], [Image], [IsVisible], [ImageOrder]) VALUES (@IdGallery, @Image, @IsVisible, @ImageOrder)" 
        SelectCommand="SELECT * FROM [Gallery]" 
        UpdateCommand="UPDATE [Gallery] SET [Image] = @Image, [IsVisible] = @IsVisible, [ImageOrder] = @ImageOrder WHERE [IdGallery] = @IdGallery">
        <DeleteParameters>
            <asp:Parameter Name="IdGallery" Type="Object" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="IdGallery" Type="Object" />
            <asp:Parameter Name="Image" Type="String" />
            <asp:Parameter Name="IsVisible" Type="Boolean" />
            <asp:Parameter Name="ImageOrder" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Image" Type="String" />
            <asp:Parameter Name="IsVisible" Type="Boolean" />
            <asp:Parameter Name="ImageOrder" Type="Int32" />
            <asp:Parameter Name="IdGallery" Type="Object" />
        </UpdateParameters>
    </asp:SqlDataSource>
</div>
</asp:Content>

