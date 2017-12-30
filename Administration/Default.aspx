<%@ Page Language="C#"  MasterPageFile="~/Administration/Administration.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Administration_Default" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  <title>Administration</title>
</asp:Content>



<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



    <div style="padding: 20px 50px 50px 50px">
   
     
   

  
         <asp:Label ID="lblTest" runat="server" Text=""></asp:Label>
    
     <h3>Villa Mili</h3>
<%--<div style="border-bottom-style:solid">    
<h4 class="translations">Prijevodi tekstova</h4>
<label>TekstId: </label>
<asp:TextBox ID="txtTranslationId" runat="server"></asp:TextBox>
<label>Hrvatski: </label>
<asp:TextBox ID="txtCroatian" runat="server"></asp:TextBox>
<label>Engleski: </label>
<asp:TextBox ID="txtEnglish" runat="server"></asp:TextBox>
<label>German: </label>
<asp:TextBox ID="txtGerman" runat="server"></asp:TextBox>
<asp:Button ID="btnInsert" runat="server" Text="Spremi" onclick="btnInsert_Click" />
<br />


       <asp:GridView ID="gvTranslations" runat="server" AllowSorting="True" 
           AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" 
           BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Id" 
           DataSourceID="SqlDataSource1" GridLines="Horizontal" ShowHeaderWhenEmpty="True">
           <AlternatingRowStyle BackColor="#F7F7F7" />
           <Columns>
               <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" />
               <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" 
                   ReadOnly="True" SortExpression="Id" />
               <asp:BoundField DataField="TranslationId" HeaderText="TranslationId" 
                   SortExpression="TranslationId" />
               <asp:BoundField DataField="Croatian" HeaderText="Croatian" 
                   SortExpression="Croatian" />
               <asp:BoundField DataField="English" HeaderText="English" 
                   SortExpression="English" />
               <asp:BoundField DataField="German" HeaderText="German" 
                   SortExpression="German" />
           </Columns>
           <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
           <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
           <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
           <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
           <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
           <SortedAscendingCellStyle BackColor="#F4F4FD" />
           <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
           <SortedDescendingCellStyle BackColor="#D8D8F0" />
           <SortedDescendingHeaderStyle BackColor="#3E3277" />
       </asp:GridView>
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
           ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
           DeleteCommand="DELETE FROM [Translations] WHERE [Id] = @Id" 
           InsertCommand="INSERT INTO [Translations] ([TranslationId], [Croatian], [English], [German]) VALUES (@TranslationId, @Croatian, @English, @German)" 
           SelectCommand="SELECT * FROM [Translations]" 
           UpdateCommand="UPDATE [Translations] SET [TranslationId] = @TranslationId, [Croatian] = @Croatian, [English] = @English, [German] = @German WHERE [Id] = @Id">
             <DeleteParameters>
                 <asp:Parameter Name="Id" Type="Int32" />
             </DeleteParameters>
             <InsertParameters>
                 <asp:Parameter Name="TranslationId" Type="String" />
                 <asp:Parameter Name="Croatian" Type="String" />
                 <asp:Parameter Name="English" Type="String" />
                 <asp:Parameter Name="German" Type="String" />
             </InsertParameters>
             <UpdateParameters>
                 <asp:Parameter Name="TranslationId" Type="String" />
                 <asp:Parameter Name="Croatian" Type="String" />
                 <asp:Parameter Name="English" Type="String" />
                 <asp:Parameter Name="German" Type="String" />
                 <asp:Parameter Name="Id" Type="Int32" />
             </UpdateParameters>
       </asp:SqlDataSource>
       </div>



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
       </div>--%>

    <%--    <h4>Evidencija rezervacija</h4>
       <asp:GridView ID="gvGuests" runat="server" AllowSorting="True" 
             AutoGenerateColumns="False" CellPadding="4" DataKeyNames="GuestId" 
             DataSourceID="SqlDataSource3" ForeColor="#333333" GridLines="None" 
             ShowHeaderWhenEmpty="True">
           <AlternatingRowStyle BackColor="White" />
           <Columns>
               <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
               <asp:BoundField DataField="GuestId" HeaderText="GuestId" InsertVisible="False" 
                   ReadOnly="True" SortExpression="GuestId" />
               <asp:BoundField DataField="InquireDate" HeaderText="InquireDate" 
                   SortExpression="InquireDate"  DataFormatString="{0:d.M.yyyy}" />
               <asp:BoundField DataField="FirstName" HeaderText="FirstName" 
                   SortExpression="FirstName" />
               <asp:BoundField DataField="LastName" HeaderText="LastName" 
                   SortExpression="LastName" />
               <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
               <asp:BoundField DataField="Arrival" HeaderText="Arrival" 
                   SortExpression="Arrival"  DataFormatString="{0:d.M.yyyy}" />
               <asp:BoundField DataField="Departure" HeaderText="Departure" 
                   SortExpression="Departure"  DataFormatString="{0:d.M.yyyy}" />
               <asp:BoundField DataField="Days" HeaderText="Days" 
                   SortExpression="Days" />
               <asp:BoundField DataField="Adults" HeaderText="Adults" 
                   SortExpression="Adults" />
               <asp:BoundField DataField="Children" HeaderText="Children" 
                   SortExpression="Children" />
               <asp:BoundField DataField="Message" HeaderText="Message" 
                   SortExpression="Message" />
               <asp:BoundField DataField="Apartment" HeaderText="Apartment" 
                   SortExpression="Apartment" />
               <asp:BoundField DataField="PricePerDay" HeaderText="PricePerDay" 
                   SortExpression="PricePerDay" />
               <asp:BoundField DataField="TotalPrice" HeaderText="TotalPrice" 
                   SortExpression="TotalPrice" />
               <asp:BoundField DataField="Deposit" HeaderText="Deposit" 
                   SortExpression="Deposit" />
               <asp:BoundField DataField="RestToPay" HeaderText="RestToPay" 
                   SortExpression="RestToPay" />
               <asp:BoundField DataField="BookingStatus" HeaderText="BookingStatus" 
                   SortExpression="BookingStatus" />
               <asp:BoundField DataField="ConfirmationDate" HeaderText="ConfirmationDate" 
                   SortExpression="ConfirmationDate"  DataFormatString="{0:d.M.yyyy}" />
               <asp:BoundField DataField="Annotation" HeaderText="Annotation" 
                   SortExpression="Annotation" />
           </Columns>
           <EditRowStyle BackColor="#7C6F57" />
           <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
           <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
           <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
           <RowStyle BackColor="#E3EAEB" />
           <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
           <SortedAscendingCellStyle BackColor="#F8FAFA" />
           <SortedAscendingHeaderStyle BackColor="#246B61" />
           <SortedDescendingCellStyle BackColor="#D4DFE1" />
           <SortedDescendingHeaderStyle BackColor="#15524A" />
       </asp:GridView>





         <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
             ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
             DeleteCommand="DELETE FROM [Guests] WHERE [GuestId] = @GuestId" 
             InsertCommand="INSERT INTO [Guests] ([InquireDate], [FirstName], [LastName], [Email], [Arrival], [Departure], [Days], [Adults], [Children], [Message], [Apartment], [PricePerDay], [TotalPrice], [Deposit], [RestToPay], [BookingStatus], [ConfirmationDate], [Annotation]) VALUES (@InquireDate, @FirstName, @LastName, @Email, @Arrival, @Departure, @Days, @Adults, @Children, @Message, @Apartment, @PricePerDay, @TotalPrice, @Deposit, @RestToPay, @BookingStatus, @ConfirmationDate, @Annotation)" 
             SelectCommand="SELECT * FROM [Guests]" 
             UpdateCommand="UPDATE [Guests] SET [InquireDate] = @InquireDate, [FirstName] = @FirstName, [LastName] = @LastName, [Email] = @Email, [Arrival] = @Arrival, [Departure] = @Departure, [Days] = @Days, [Adults] = @Adults, [Children] = @Children, [Message] = @Message, [Apartment] = @Apartment, [PricePerDay] = @PricePerDay, [TotalPrice] = @TotalPrice, [Deposit] = @Deposit, [RestToPay] = @RestToPay, [BookingStatus] = @BookingStatus, [ConfirmationDate] = @ConfirmationDate, [Annotation] = @Annotation WHERE [GuestId] = @GuestId">
             <DeleteParameters>
                 <asp:Parameter Name="GuestId" Type="Int32" />
             </DeleteParameters>
             <InsertParameters>
                 <asp:Parameter DbType="Date" Name="InquireDate" />
                 <asp:Parameter Name="FirstName" Type="String" />
                 <asp:Parameter Name="LastName" Type="String" />
                 <asp:Parameter Name="Email" Type="String" />
                 <asp:Parameter DbType="Date" Name="Arrival" />
                 <asp:Parameter DbType="Date" Name="Departure" />
                 <asp:Parameter Name="Days" Type="Int32" />
                 <asp:Parameter Name="Adults" Type="Int32" />
                 <asp:Parameter Name="Children" Type="Int32" />
                 <asp:Parameter Name="Message" Type="String" />
                 <asp:Parameter Name="Apartment" Type="String" />
                 <asp:Parameter Name="PricePerDay" Type="Decimal" />
                 <asp:Parameter Name="TotalPrice" Type="Decimal" />
                 <asp:Parameter Name="Deposit" Type="Decimal" />
                 <asp:Parameter Name="RestToPay" Type="Decimal" />
                 <asp:Parameter Name="BookingStatus" Type="String" />
                 <asp:Parameter DbType="Date" Name="ConfirmationDate" />
                  <asp:Parameter Name="Annotation" Type="String" />
             </InsertParameters>
             <UpdateParameters>
                 <asp:Parameter DbType="Date" Name="InquireDate" />
                 <asp:Parameter Name="FirstName" Type="String" />
                 <asp:Parameter Name="LastName" Type="String" />
                 <asp:Parameter Name="Email" Type="String" />
                 <asp:Parameter DbType="Date" Name="Arrival" />
                 <asp:Parameter DbType="Date" Name="Departure" />
                 <asp:Parameter Name="Days" Type="Int32" />
                 <asp:Parameter Name="Adults" Type="Int32" />
                 <asp:Parameter Name="Children" Type="Int32" />
                 <asp:Parameter Name="Message" Type="String" />
                 <asp:Parameter Name="Apartment" Type="String" />
                 <asp:Parameter Name="PricePerDay" Type="Decimal" />
                 <asp:Parameter Name="TotalPrice" Type="Decimal" />
                 <asp:Parameter Name="Deposit" Type="Decimal" />
                 <asp:Parameter Name="RestToPay" Type="Decimal" />
                 <asp:Parameter Name="BookingStatus" Type="String" />
                 <asp:Parameter DbType="Date" Name="ConfirmationDate" />
                 <asp:Parameter Name="Annotation" Type="String" />
                 <asp:Parameter Name="GuestId" Type="Int32" />
             </UpdateParameters>
         </asp:SqlDataSource>
--%>




     


    </div>


</asp:Content>

