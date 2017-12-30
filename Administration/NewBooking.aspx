<%@ Page Title="" Language="C#" MasterPageFile="~/Administration/Administration.master" AutoEventWireup="true" CodeFile="NewBooking.aspx.cs" Inherits="Administration_NewBooking" %>
<%@ Register Assembly="BasicFrame.WebControls.BasicDatePicker" Namespace="BasicFrame.WebControls"
    TagPrefix="BDP" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<section class="lead">

<div id="divInfoMessage" runat="server" visible="false" class=" alert alert-success">
 <asp:label id="lblInfoMessage" runat="server" text=""></asp:label>
</div>


<div id="divQueryForm" class="boxShadow" style="padding:30px 20px 20px 20px" runat="server">
<fieldset>
<legend><label id="lblBookingForm" runat="server"></label></legend>
<div><asp:label id="lblFirstName" runat="server"></asp:label></div>
<div>
     <asp:textbox id="txtFirstName" CssClass="form-control" runat="server"></asp:textbox>
            <asp:requiredfieldvalidator ID="Requiredfieldvalidator1" runat="server" errormessage="Required" ControlToValidate="txtFirstName" ValidationGroup="FormGroup" ForeColor="Red"></asp:requiredfieldvalidator>
</div>

<div><asp:label id="lblLastName" runat="server"></asp:label></div>
<div>
     <asp:textbox id="txtLastName" cssclass="form-control" runat="server"></asp:textbox>
            <asp:requiredfieldvalidator ID="Requiredfieldvalidator2" runat="server" errormessage="Required" controltovalidate="txtLastName" ValidationGroup="FormGroup"
                forecolor="Red"></asp:requiredfieldvalidator>
</div>

<div><asp:label id="lblEmail" runat="server"></asp:label></div>
<div>
     <asp:textbox id="txtEmail" cssclass="form-control" runat="server"></asp:textbox>
            <asp:requiredfieldvalidator ID="Requiredfieldvalidator3" runat="server" errormessage="Required" controltovalidate="txtEmail" ValidationGroup="FormGroup"
                forecolor="Red"></asp:requiredfieldvalidator>
</div>

<div><asp:label id="lblArrival" runat="server"></asp:label></div>
<div>
      <BDP:BDPLite ID="BDPArrival" runat="server" CssClass="form-control">
                <TextBoxStyle Width="150px" Height="30" />
            </BDP:BDPLite>
            <asp:requiredfieldvalidator ID="Requiredfieldvalidator4" runat="server" errormessage="Required" controltovalidate="BDPArrival" ValidationGroup="FormGroup"
                forecolor="Red"></asp:requiredfieldvalidator>
</div>
<div><asp:label id="lblDeparture" runat="server"></asp:label></div>
<div>
        <BDP:BDPLite ID="BDPDeparture" runat="server" CssClass="form-control" RenderStyleSheet="None">
                <TextBoxStyle Width="150px" Height="30" />
            </BDP:BDPLite>
            <asp:requiredfieldvalidator ID="Requiredfieldvalidator5" runat="server" errormessage="Required" controltovalidate="BDPDeparture" ValidationGroup="FormGroup"
                forecolor="Red"></asp:requiredfieldvalidator>
</div>
<div><asp:label id="lblAdults" runat="server"></asp:label></div>
<div>
 <asp:dropdownlist id="ddlAdults" cssclass="form-control" runat="server" placeholder="Adults"></asp:dropdownlist>
              <asp:requiredfieldvalidator ID="Requiredfieldvalidator6" runat="server" errormessage="Required" controltovalidate="ddlAdults" ValidationGroup="FormGroup"
                forecolor="Red"></asp:requiredfieldvalidator>
</div>
<div><asp:label id="lblChildren" runat="server"></asp:label></div>
<div>
    <asp:dropdownlist id="ddlChildren" cssclass="form-control" runat="server" placeholder="Children"></asp:dropdownlist>
</div>

<div class="checkbox" style="padding-left: 20px">
<asp:checkboxlist id="cbApartments" runat="server" repeatlayout="Flow"></asp:checkboxlist>
</div>

<div><asp:label id="lblPricePerDay" runat="server">Cijena/dan (€)</asp:label></div>
<div>
<asp:textbox id="txtPricePerDay" cssclass="form-control" runat="server"></asp:textbox>
</div>

<div><asp:label id="lblTotalPrice" runat="server">Cijena ukupno (€)</asp:label></div>
<div>
<asp:textbox id="txtTotalPrice" cssclass="form-control" runat="server"></asp:textbox>
</div>

<div><asp:label id="lblDeposit" runat="server">Depozit (€)</asp:label></div>
<div>
<asp:textbox id="txtDeposit" cssclass="form-control" runat="server"></asp:textbox>
</div>

<div><asp:label id="lblAnnotation" runat="server"></asp:label></div>
<div>
 <asp:textbox id="txtMessage" cssclass="form-control" runat="server" rows="5"
                textmode="MultiLine"></asp:textbox>
</div>
<div style="text-align: center; padding: 10px">
<asp:button id="btnSubmit" runat="server" cssclass="btn btn-success btn-lg" Width=250 Text="SEND" onclick="btnSubmit_Click" ValidationGroup="FormGroup" />
</div>


</fieldset>
</div>



</section>
</asp:Content>

