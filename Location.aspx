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

<script src='https://maps.googleapis.com/maps/api/js?v=3.exp'></script><div style='overflow:hidden;height:440px;width:100%;'><div id='gmap_canvas' style='height:440px;width:100%;'></div><div><small><a href="http://embedgooglemaps.com">									embed google maps							</a></small></div><div><small><a href="https://privacypolicygenerator.info">privacy policy generator</a></small></div><style>#gmap_canvas img{max-width:none!important;background:none!important}</style></div><script type='text/javascript'>                                                                                                                                                                                                                                             									                 							                                                                                                                                                                                                                   function init_map() { var myOptions = { zoom: 10, center: new google.maps.LatLng(43.38371009999999, 16.905368400000043), mapTypeId: google.maps.MapTypeId.ROADMAP }; map = new google.maps.Map(document.getElementById('gmap_canvas'), myOptions); marker = new google.maps.Marker({ map: map, position: new google.maps.LatLng(43.38371009999999, 16.905368400000043) }); infowindow = new google.maps.InfoWindow({ content: '<strong>Apartments Elvira</strong><br>Jardula 26, 21322 Brela, Croatia<br>' }); google.maps.event.addListener(marker, 'click', function () { infowindow.open(map, marker); }); infowindow.open(map, marker); } google.maps.event.addDomListener(window, 'load', init_map);</script>

<%--?key=AIzaSyCBTwJhi3ShWRZab7I_6MY47e6ibLAaNdw--%>

</div>


</section>
</asp:Content>

