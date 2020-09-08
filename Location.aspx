<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Location.aspx.cs" Inherits="Location" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div>
    <asp:literal id="litLocation" runat="server"></asp:literal>
</div>

<section class="lead">
<asp:Literal ID="litPageTitle" runat="server"></asp:Literal>

<div class="boxShadow googleMapConteiner">

    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1025.1899779343364!2d16.90543249249507!3d43.383816213703575!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x7337dcfb88871ff6!2sApartments%20Elvira%20Gasparovic!5e0!3m2!1shr!2shr!4v1599553003250!5m2!1shr!2shr" width="100%" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>

<%--<script src='https://maps.googleapis.com/maps/api/js?v=3.exp'></script><div style='overflow:hidden;height:440px;width:100%;'><div id='gmap_canvas' style='height:440px;width:100%;'></div><div><small><a href="http://embedgooglemaps.com">									embed google maps							</a></small></div><div><small><a href="https://privacypolicygenerator.info">privacy policy generator</a></small></div><style>#gmap_canvas img{max-width:none!important;background:none!important}</style></div><script type='text/javascript'>                                                                                                                                                                                                                                             									                 							                                                                                                                                                                                                                   function init_map() { var myOptions = { zoom: 10, center: new google.maps.LatLng(43.38371009999999, 16.905368400000043), mapTypeId: google.maps.MapTypeId.ROADMAP }; map = new google.maps.Map(document.getElementById('gmap_canvas'), myOptions); marker = new google.maps.Marker({ map: map, position: new google.maps.LatLng(43.38371009999999, 16.905368400000043) }); infowindow = new google.maps.InfoWindow({ content: '<strong>Apartments Elvira</strong><br>Jardula 26, 21322 Brela, Croatia<br>' }); google.maps.event.addListener(marker, 'click', function () { infowindow.open(map, marker); }); infowindow.open(map, marker); } google.maps.event.addDomListener(window, 'load', init_map);</script>--%>

<%--?key=AIzaSyCBTwJhi3ShWRZab7I_6MY47e6ibLAaNdw--%>

</div>


</section>
</asp:Content>

