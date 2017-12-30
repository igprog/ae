<%@ Page Title="" Language="C#" MasterPageFile="~/Administration/Administration.master" AutoEventWireup="true" CodeFile="EditBooking.aspx.cs" Inherits="Administration_EditBooking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<section>
<h3>Uredi rezervacije</h3>



<div id="divSupervisor" runat="server">

   <%-- <asp:CheckBox ID="cbEditDelete" Text="Omogući uređivanje" 
        runat="server" AutoPostBack="true" oncheckedchanged="cbEditDelete_CheckedChanged" />--%>

<asp:GridView ID="gvGuests" runat="server" AllowSorting="True" style="text-align: center"
             AutoGenerateColumns="False" DataKeyNames="GuestId"
             DataSourceID="SqlDataSource3" 
             ShowHeaderWhenEmpty="True" CellPadding="4" ForeColor="#333333" 
        GridLines="None">
           <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
           <Columns>
               <asp:CommandField ShowDeleteButton="False" ShowEditButton="True" EditText="UREDI" />
               <asp:BoundField DataField="GuestId" HeaderText="ID" InsertVisible="False" 
                   ReadOnly="True" SortExpression="GuestId" />
               <asp:BoundField DataField="InquireDate" HeaderText="Datum upita" 
                   SortExpression="InquireDate"  DataFormatString="{0:d.M.yyyy}" />
               <asp:BoundField DataField="FirstName" HeaderText="Ime" 
                   SortExpression="FirstName" />
               <asp:BoundField DataField="LastName" HeaderText="Prezime" 
                   SortExpression="LastName" />
               <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
               <asp:BoundField DataField="Arrival" HeaderText="Dolazak" 
                   SortExpression="Arrival"  DataFormatString="{0:d.M.yyyy}" />
               <asp:BoundField DataField="Departure" HeaderText="Odlazak" 
                   SortExpression="Departure"  DataFormatString="{0:d.M.yyyy}" />
               <asp:BoundField DataField="Days" HeaderText="Dana ukupno" 
                   SortExpression="Days" />
               <asp:BoundField DataField="Adults" HeaderText="Broj odraslih" 
                   SortExpression="Adults" />
               <asp:BoundField DataField="Children" HeaderText="Broj djece" 
                   SortExpression="Children" />
               <asp:BoundField DataField="Message" HeaderText="Poruka" 
                   SortExpression="Message" />
               <asp:BoundField DataField="Apartment" HeaderText="Apartman" 
                   SortExpression="Apartment" />
               <asp:BoundField DataField="PricePerDay" HeaderText="Cijena/dan" 
                   SortExpression="PricePerDay" />
               <asp:BoundField DataField="TotalPrice" HeaderText="Cijena ukupno" 
                   SortExpression="TotalPrice" />
               <asp:BoundField DataField="Deposit" HeaderText="Depozit" 
                   SortExpression="Deposit" />
               <asp:BoundField DataField="RestToPay" HeaderText="Ostatak za uplatu" 
                   SortExpression="RestToPay" />
               <asp:CheckBoxField DataField="Confirmation" HeaderText="Potvrda rezervacije" 
                   SortExpression="Confirmation" />
               <asp:BoundField DataField="ConfirmationDate" HeaderText="Datum rezervacije" 
                   SortExpression="ConfirmationDate"  DataFormatString="{0:d.M.yyyy}" />
               <asp:BoundField DataField="Annotation" HeaderText="Annotation" 
                   SortExpression="Annotation" />
           </Columns>
           <EditRowStyle BackColor="#999999" />
           <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
           <HeaderStyle Height="40" BackColor="#5D7B9D" Font-Bold="True" 
               ForeColor="White" />
           <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
           <RowStyle Height="30" BackColor="#F7F6F3" ForeColor="#333333" />
           
           
           <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
           <SortedAscendingCellStyle BackColor="#E9E7E2" />
           <SortedAscendingHeaderStyle BackColor="#506C8C" />
           <SortedDescendingCellStyle BackColor="#FFFDF8" />
           <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
           
           
       </asp:GridView>





         <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
             ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
             DeleteCommand="DELETE FROM [Guests] WHERE [GuestId] = @GuestId" 
             InsertCommand="INSERT INTO [Guests] ([InquireDate], [FirstName], [LastName], [Email], [Arrival], [Departure], [Days], [Adults], [Children], [Message], [Apartment], [PricePerDay], [TotalPrice], [Deposit], [RestToPay], [Confirmation], [ConfirmationDate], [Annotation]) VALUES (@InquireDate, @FirstName, @LastName, @Email, @Arrival, @Departure, @Days, @Adults, @Children, @Message, @Apartment, @PricePerDay, @TotalPrice, @Deposit, @RestToPay, @Confirmation, @ConfirmationDate, @Annotation)" 
             SelectCommand="SELECT * FROM [Guests]" 
             UpdateCommand="UPDATE [Guests] SET [InquireDate] = @InquireDate, [FirstName] = @FirstName, [LastName] = @LastName, [Email] = @Email, [Arrival] = @Arrival, [Departure] = @Departure, [Days] = @Days, [Adults] = @Adults, [Children] = @Children, [Message] = @Message, [Apartment] = @Apartment, [PricePerDay] = @PricePerDay, [TotalPrice] = @TotalPrice, [Deposit] = @Deposit, [RestToPay] = @RestToPay, [Confirmation] = @Confirmation, [ConfirmationDate] = @ConfirmationDate, [Annotation] = @Annotation WHERE [GuestId] = @GuestId">
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
                 <asp:Parameter Name="Confirmation" Type="Boolean" />
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
                 <asp:Parameter Name="Confirmation" Type="Boolean" />
                 <asp:Parameter DbType="Date" Name="ConfirmationDate" />
                 <asp:Parameter Name="Annotation" Type="String" />
                 <asp:Parameter Name="GuestId" Type="Int32" />
             </UpdateParameters>
         </asp:SqlDataSource>

</div>

</section>
</asp:Content>

