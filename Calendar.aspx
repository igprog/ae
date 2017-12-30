<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Calendar.aspx.cs" Inherits="Calendar" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<section class="lead">
 <asp:Literal ID="litPageTitle" runat="server"></asp:Literal>

     <div class="boxShadow" style="padding:30px 20px 20px 20px">
      <asp:literal id="litCalendar" runat="server"></asp:literal>
    <asp:gridview id="gvCalendar" CssClass="calendar" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1" ShowHeaderWhenEmpty="True" BorderColor="#CCCCCC">
        <Columns>
            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" 
                DataFormatString="{0:d.MMMM.yyy}" >
            <HeaderStyle HorizontalAlign="Center" CssClass="calendarHearder" Width="200" />
            <ItemStyle  />
            </asp:BoundField>
            <asp:BoundField DataField="Apartment1" HeaderText="A1" 
                SortExpression="Apartment1" >
            <HeaderStyle CssClass="calendarHearder" />
            <ItemStyle  />
            </asp:BoundField>
            <asp:BoundField DataField="Apartmant2" HeaderText="A2" 
                SortExpression="Apartmant2" >
            <HeaderStyle CssClass="calendarHearder" />
            <ItemStyle />
            </asp:BoundField>
            <asp:BoundField DataField="Apartment3" HeaderText="A3" 
                SortExpression="Apartment3" >
            <HeaderStyle CssClass="calendarHearder" />
            <ItemStyle  />
            </asp:BoundField>
           <%-- <asp:BoundField DataField="Apartment4" HeaderText="A4" 
                SortExpression="Apartment4" >
            <HeaderStyle CssClass="calendarHearder" />
            <ItemStyle  />
            </asp:BoundField>
            <asp:BoundField DataField="Apartment5" HeaderText="A5" 
                SortExpression="Apartment5" >
            <HeaderStyle CssClass="calendarHearder" />
            <ItemStyle  />
            </asp:BoundField>--%>
        </Columns>
        <HeaderStyle CssClass="calendar" />
        <RowStyle CssClass="calendar" />
        
    </asp:gridview>


    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [Calendar] ORDER BY Date ASC "></asp:SqlDataSource>

    </div>
</section>

 

     

</asp:Content>

