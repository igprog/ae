<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Price.aspx.cs" Inherits="Price" %>
<%@ Register Assembly="BasicFrame.WebControls.BasicDatePicker" Namespace="BasicFrame.WebControls"
    TagPrefix="BDP" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<section class="lead">
<asp:Literal ID="litPageTitle" runat="server"></asp:Literal>
 <asp:literal id="litPriceShortDescription" runat="server"></asp:literal>
    

    <div style="padding:50px 0 50px 0">
      
        <table style="vertical-align: middle; text-align: center" class="table table-bordered table-responsive boxShadow">
            <tr>
            <td></td>
            <td colspan="5" style="background-color: Menu"><label id="period" runat="server"></label></td>
            </tr>
            <tr style="background-color: Menu">
                <td style="vertical-align: middle; background-color:#c2d6d6"><label id="apartment" runat="server"></label>
                </td>
                <td>15.9.-1.6.</td>
                <td>1.6.-15.6.<br />1.9.-15.9.</td>
                <td>15.6.-1.7.<br />25.8.-1.9</td>
                <td>1.7.-25.8.</td>
            </tr>
             <tr>
                <td style="background-color:#c2d6d6">A1</td>
                <td>50€</td>
                <td>60€</td>
                <td>70€</td>
                 <td>90€</td>
            </tr>
             <tr>
                <td style="background-color:#c2d6d6">A2</td>
                <td>50€</td>
                <td>60€</td>
                <td>70€</td>
                 <td>90€</td>
            </tr>
            <tr>
                <td style="background-color:#c2d6d6">A3</td>
                <td>50€</td>
                <td>60€</td>
                <td>70€</td>
                <td>90€</td>
            </tr>
         <%--   <tr>
                <td style="background-color:#c2d6d6">A4
                </td>
                <td>50€
                </td>
                <td>60€
                </td>
                <td>80€
                </td>
                <td>90€
                </td>
                <td>100€
                </td>
            </tr>
            <tr>
                <td style="background-color:#c2d6d6">A5
                </td>
                <td>40€
                </td>
                <td>50€
                </td>
                <td>70€
                </td>
                <td>75€
                </td>
                <td>80€
                </td>
            </tr>--%>
        </table>
    </div>


<div>
   


    <%--<h3>Informativ Calculation</h3>
    <div>
        <asp:Label ID="lblArrival" runat="server" Text="Arrival"></asp:Label>
    </div>
    <div>
      <BDP:BDPLite ID="BDPArrival" runat="server">
                <TextBoxStyle Width="80px" Height="25" />
            </BDP:BDPLite>
            <asp:requiredfieldvalidator ID="Requiredfieldvalidator1" runat="server" errormessage="Required" controltovalidate="BDPArrival" ValidationGroup="calculationGroup"
                forecolor="Red"></asp:requiredfieldvalidator>
    </div>
    <div>
    <asp:Label ID="lblDeparture" runat="server" Text="Departure"></asp:Label>
    </div>
    <div>
     <BDP:BDPLite ID="BDPDeparture" runat="server" RenderStyleSheet="None">
                <TextBoxStyle Width="80px" Height="25" />
            </BDP:BDPLite>
            <asp:requiredfieldvalidator ID="Requiredfieldvalidator2" runat="server" errormessage="Required" controltovalidate="BDPDeparture" ValidationGroup="calculationGroup"
                forecolor="Red"></asp:requiredfieldvalidator>
    </div>
    <div>
    <asp:Label ID="lblPersons" runat="server" Text="Persons"></asp:Label>
    </div>
    <div>
       <asp:dropdownlist id="ddlPersons" Cssclass="form-control" runat="server"></asp:dropdownlist>
        <asp:requiredfieldvalidator ID="Requiredfieldvalidator3" runat="server" errormessage="Required" controltovalidate="ddlPersons" ValidationGroup="calculationGroup"
                forecolor="Red"></asp:requiredfieldvalidator>
    </div>
    <div>
      <asp:button id="btnCalculatePrice" runat="server" cssclass="btn btn-success" Text="CALCULATE" onclick="btnCalculatePrice_Click" ValidationGroup="calculationGroup" />
    </div>
    <div>
        <asp:literal id="litCalculationResult" runat="server"></asp:literal>
    </div>
--%>

<%--<table>
    <tr>
        <td class="alignRight">
            <asp:label id="lblArrival" runat="server"></asp:label>:
        </td>
        <td class="alignLeft">
            <BDP:BDPLite ID="BDPArrival" runat="server">
                <TextBoxStyle Width="80px" Height="25" />
            </BDP:BDPLite>
            <asp:requiredfieldvalidator runat="server" errormessage="Required" controltovalidate="BDPArrival"
                forecolor="Red"></asp:requiredfieldvalidator>
        </td>
    </tr>

    <tr>
        <td class="alignRight">
            <asp:label id="lblDeparture" runat="server"></asp:label>:
        </td>
        <td class="alignLeft">
            <BDP:BDPLite ID="BDPDeparture" runat="server" RenderStyleSheet="None">
                <TextBoxStyle Width="80px" Height="25" />
            </BDP:BDPLite>
            <asp:requiredfieldvalidator runat="server" errormessage="Required" controltovalidate="BDPDeparture"
                forecolor="Red"></asp:requiredfieldvalidator>
        </td>
    </tr>

    <tr>
        <td class="alignRight">
            <asp:label id="lblPersons" runat="server"></asp:label>:
        </td>
        <td class="alignLeft">
            <asp:dropdownlist id="ddlPersons" Cssclass="form-control" runat="server"></asp:dropdownlist>
        <asp:requiredfieldvalidator runat="server" errormessage="Required" controltovalidate="ddlPersons"
                forecolor="Red"></asp:requiredfieldvalidator>
       </td>
    </tr>


     <tr>
        <td class="alignRight">
            <asp:label id="lblAirconditioning" runat="server"></asp:label>:
           
        </td>
        <td class="alignLeft">
            <asp:checkbox id="cbAirconditioning" checked="false" runat="server"></asp:checkbox>
         </td>
    </tr>


    <tr>
        <td>
        </td>
        <td class="alignLeft">
            <asp:button id="btnCalculatePrice" runat="server" cssclass="btn btn-success" Text="CALCULATE" onclick="btnCalculatePrice_Click" />
        </td>
    </tr>
    <tr>
        <td>
        </td>
        <td class="alignLeft">
            <asp:literal id="litCalculationResult" runat="server"></asp:literal>
        </td>
    </tr>
    <tr>
        <td>
        </td>
        <td class="alignLeft">
           
        </td>
    </tr>

</table>--%>

   

</div>

</section>
</asp:Content>

