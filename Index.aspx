<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Index.aspx.cs" Inherits="Index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div class="container marketing lead">
        <hr class="featurette-divider">
        <div class="row featurette">
            <div class="col-md-12">
                <img class="img-floatRight" alt="image" src="imgGallery/04.jpg">
                <asp:Literal ID="litMainDescription" runat="server"></asp:Literal>
            </div>
        </div>
        <hr class="featurette-divider">
        <div class="row featurette">
            <div class="col-md-12">
                <img class="img-floatLeft" data-src="holder.js/500x500/auto" alt="Generic placeholder image"
                    src="imgGallery/03.jpg">
                <asp:Literal ID="litHomeDescription" runat="server"></asp:Literal>
            </div>
        </div>
        <hr class="featurette-divider">
        <div class="row featurette">
            <div class="col-md-12">
                <img class="img-floatRight" data-src="holder.js/500x500/auto" alt="Generic placeholder image"
                    src="imgGallery/11.jpg">
                <asp:Literal ID="litApartmentsDescription" runat="server"></asp:Literal>
            </div>
        </div>
        <hr class="featurette-divider">
        <asp:Literal ID="litDistances" runat="server"></asp:Literal>
    </div>

  

   <script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-47317436-5', 'auto');
  ga('send', 'pageview');

</script>

    

   

</asp:Content>

