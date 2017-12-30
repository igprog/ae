<%@ Page Title="" Language="C#" MasterPageFile="~/Administration/Administration.master" AutoEventWireup="true" CodeFile="BrowseBooking.aspx.cs" Inherits="Administration_BrowseBooking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<section>
<h3>Pregled rezervacija</h3>


<div>
<label>Sezona:</label>
    <asp:DropDownList ID="ddlYear" runat="server" AutoPostBack="true"
        onselectedindexchanged="ddlYear_SelectedIndexChanged">
    </asp:DropDownList>
    <br />
    <asp:Literal ID="litBooking" runat="server"></asp:Literal>
</div>




 <div class="boxShadow" style="padding:30px 20px 20px 20px">
      <asp:literal id="litCalendar" runat="server"></asp:literal>
    <asp:gridview id="gvCalendar" CssClass="calendar" runat="server" AutoGenerateColumns="False" 
        DataSourceID="SqlDataSource1" ShowHeaderWhenEmpty="True">
        <Columns>
            <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" 
                DataFormatString="{0:d.MMMM.yyy}" >
            <HeaderStyle HorizontalAlign="Center" Width="200" CssClass="calendarHearder" />
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
          <%--  <asp:BoundField DataField="Apartment4" HeaderText="A4" 
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

