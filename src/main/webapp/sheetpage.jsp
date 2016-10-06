<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>H�rr�ste Oy</title>
<link rel="stylesheet" type="text/css" href="resources/styles/Semantic-UI-CSS-master/semantic.css">
<link rel="stylesheet" type="text/css" href="resources/styles/Semantic-UI-CSS-master/components/modal.css">

<script src="resources/styles/js/jquery-3.1.0.min.js"></script>
<script src="resources/styles/Semantic-UI-CSS-master/semantic.js"></script>
<script src="resources/styles/Semantic-UI-CSS-master/components/modal.js"></script>


<!-- Lis�� tapahtuma scripti -->
<script type="text/javascript">$(document).ready(function(){
     $('#logIn').click(function(){
        $('#modaldiv').modal('show');    
     });
});</script>
<!-- tabular script -->
<script type="text/javascript">$(document).ready(function(){
    $('.demo.menu .item').tab({history:false});
});
</script>
</head>

<body>

<!-- yl� otsikko/logo -->
<img class="ui centered medium circular image" style="margin-top:20px;" alt="H�rr�ste Oy" src="resources/images/Harraste.png"/>

<!-- Intro alue -->
<div class="ui piled segment" style="width:85%; margin-right: auto;
    margin-left: auto;">
  <center><h2 class="ui header">Tervetuloa harrastamaan ;)</h2></center>
</br>

<center><p>Etsi alla olevista tapahtumista mieleisesi tai luo itse uusi tapahtuma. L�het� meille lomake ja me p�ivit�mme sivut joka p�iv� klo 23.00. �l� siis lis�� tapahtumaa samalle p�iv�lle.</p></center>
</br>

<!-- Lis�� tapahtuma nappula -->
<center><button id="logIn" class="positive ui button">Lis�� tapahtuma</button></center>

<!-- Lis�� tapahtuma sis�lt� -->
<div id="modaldiv" class="ui basic modal">
  <i class="close icon"></i>
  <div class="header">
  </div>
  <div class="image content">
    <div class="description">
    <!-- Google forms -->
      <p>
      <!--  <iframe src="https://docs.google.com/forms/d/e/1FAIpQLSfM2NrOnk9C6-QTlsxvFOSFaebscdx--X6NYOlkdbAA2NrFpA/viewform?embedded=true" width="100%" height="1000" frameborder="0" marginheight="0" marginwidth="0">Ladataan...</iframe> -->
      <iframe src="formpage.jsp" width="100%" height="500" frameborder="0" marginheight="0" marginwidth="0">Ladataan...</iframe></p>
    </div>
  </div>
</div>
</div>
<!-- Intro loppuu -->


<!-- Tapahtumat -->
<div class="stackable ui grid" style="width:85%; margin-right: auto;
    margin-left: auto;">

<!-- Yksi tapahtuma -->
<div class="eight wide column">
<div class="ui green segment">

<div class="ui list">
  <div class="item">
    <i class="big green hand lizard icon"></i>
    <div class="content">
      <h1>NFL</h1>
    </div>
  </div>
  </div>
  
<div class="ui horizontal list">
  <div class="item">
    <i class="red marker icon"></i>
    <div class="content">
      Baari
    </div>
  </div>
   <div class="item">
    <i class="orange calendar icon"></i>
    <div class="content">
      09.10.2016
    </div>
  </div>
        <div class="item">
    <i class="orange clock icon"></i>
    <div class="content">
      08:00
    </div>
  </div>
 </div>
  
 <div class="ui list"> 
  <div class="item">
    <i class="green user icon"></i>
    <div class="content">
      Aleksi Ahonen
    </div>
  </div>
   <div class="item">
    <i class="green mail icon"></i>
    <div class="content">
      <a href="mailto:jack@semantic-ui.com">h�p�h�p�@harraste.com</a>
    </div>
  </div>
</div>  

<<<<<<< HEAD
<div class="ui pointing secondary demo menu">
                <a class="active red item" data-tab="1tr">Lis�tietoja</a>
   				<a class="blue item" data-tab="2tr">Osallistujat</a>
   </div>
      <div class="ui active tab" data-tab="1tr">

 <table class="ui fixed padded green table" style="width:90%;"> 
=======
 <table class="ui fixed green table" style="width:90%;"> 
>>>>>>> 92c5ff992c4032af22a88a1e07dacd03a79f07ad
  <thead>
    <tr><th><i class="green info icon"></i>Lis�tietoja</th>
  </tr></thead>
  <tbody>
    <tr>
      <td>Jukolan talo, etel�isess� H�meess�, seisoo er��n m�en pohjoisella rinteell�, liki Toukolan kyl��. Sen l�heisin ym�p�rist� on kivinen tanner, mutta alempana alkaa pellot, joissa, ennenkuin talo oli h�vi��n mennyt, aaltoili ter�inen vilja. Peltojen alla on niittu, apila�yr�inen, halkileikkaama monipolvisen ojan; ja runsaasti antoi se heini�, ennenkuin joutui laitumeksi kyl�n karjalle. Muutoin on talolla avaria metsi�, soita ja er�maita, jotka, t�m�n tilustan ensimm�isen perustajan oivallisen toiminnan kautta, olivat langenneet sille osaksi jo ison jaon k�ydess� entisin� aikoina. Silloinpa Jukolan is�nt�, pit�en enemm�n huolta j�lkeentulevainsa edusta kuin omasta parhaastansa, otti vastaan osaksensa kulon polttaman mets�n ja sai sill� keinolla seitsem�n vertaa enemm�n kuin toiset naapurinsa. Mutta kaikki kulovalkean j�ljet olivat jo kadonneet h�nen piirist�ns� ja tuuhea mets� kasvanut sijaan. - Ja t�m� on niiden seitsem�n veljen koto, joiden el�m�nvaiheita t�ss� nyt k�yn kertoilemaan.</td>
    </tr>
  </tbody>
</table>
</div>
<div class="ui tab" data-tab="2tr">Osallistujat</div>
</div>
</div>

<!-- Yksi tapahtuma loppuu -->

<div class="eight wide column">
<div class="ui green segment">

<div class="ui list">
  <div class="item">
    <i class="big green hand lizard icon"></i>
    <div class="content">
      <h1>L�tk��</h1>
    </div>
  </div>
  </div>
  
<div class="ui horizontal list">
  <div class="item">
    <i class="red marker icon"></i>
    <div class="content">
      O'Learys
    </div>
  </div>
   <div class="item">
    <i class="orange calendar icon"></i>
    <div class="content">
      18.11.2016
    </div>
  </div>
        <div class="item">
    <i class="orange clock icon"></i>
    <div class="content">
      19:00
    </div>
  </div>
 </div>
  
 <div class="ui list"> 
  <div class="item">
    <i class="green user icon"></i>
    <div class="content">
      Mikko Hallberg
    </div>
  </div>
   <div class="item">
    <i class="green mail icon"></i>
    <div class="content">
      <a href="mailto:jack@semantic-ui.com">mikko.mallikas@gmail.com</a>
    </div>
  </div>
</div>  

<div class="ui pointing secondary demo menu">
                <a class="active red item" data-tab="3tr">Lis�tietoja</a>
   				<a class="blue item" data-tab="4tr">Osallistujat</a>
   </div>
      <div class="ui active tab" data-tab="3tr">

 <table class="ui fixed padded green table" style="width:90%;"> 
  <thead>
    <tr><th><i class="green info icon"></i>Lis�tietoja</th>
  </tr></thead>
  <tbody>
    <tr>
      <td>Hello! Haluaisin seuraa l�tk�katsomoon. Go Go Ruotsi!!</td>
    </tr>
  </tbody>
</table>
</div>
<div class="ui tab" data-tab="4tr">Osallistujat</div>
</div>
</div>
  
<div class="eight wide column">
<div class="ui green segment">

<div class="ui list">
  <div class="item">
    <i class="big green hand lizard icon"></i>
    <div class="content">
      <h1>NFL</h1>
    </div>
  </div>
  </div>
  
<div class="ui horizontal list">
  <div class="item">
    <i class="red marker icon"></i>
    <div class="content">
      Baari
    </div>
  </div>
   <div class="item">
    <i class="orange calendar icon"></i>
    <div class="content">
      09.10.2016
    </div>
  </div>
        <div class="item">
    <i class="orange clock icon"></i>
    <div class="content">
      08:00
    </div>
  </div>
 </div>
  
 <div class="ui list"> 
  <div class="item">
    <i class="green user icon"></i>
    <div class="content">
      Aleksi Ahonen
    </div>
  </div>
   <div class="item">
    <i class="green mail icon"></i>
    <div class="content">
      <a href="mailto:jack@semantic-ui.com">h�p�h�p�@harraste.com</a>
    </div>
  </div>
</div>  

<div class="ui pointing secondary demo menu">
                <a class="active red item" data-tab="5tr">Lis�tietoja</a>
   				<a class="blue item" data-tab="6tr">Osallistujat</a>
   </div>
      <div class="ui active tab" data-tab="5tr">

 <table class="ui fixed padded green table" style="width:90%;"> 
  <thead>
    <tr><th><i class="green info icon"></i>Lis�tietoja</th>
  </tr></thead>
  <tbody>
    <tr>
      <td>Jukolan talo, etel�isess� H�meess�, seisoo er��n m�en pohjoisella rinteell�, liki Toukolan kyl��. Sen l�heisin ym�p�rist� on kivinen tanner, mutta alempana alkaa pellot, joissa, ennenkuin talo oli h�vi��n mennyt, aaltoili ter�inen vilja. Peltojen alla on niittu, apila�yr�inen, halkileikkaama monipolvisen ojan; ja runsaasti antoi se heini�, ennenkuin joutui laitumeksi kyl�n karjalle. Muutoin on talolla avaria metsi�, soita ja er�maita, jotka, t�m�n tilustan ensimm�isen perustajan oivallisen toiminnan kautta, olivat langenneet sille osaksi jo ison jaon k�ydess� entisin� aikoina. Silloinpa Jukolan is�nt�, pit�en enemm�n huolta j�lkeentulevainsa edusta kuin omasta parhaastansa, otti vastaan osaksensa kulon polttaman mets�n ja sai sill� keinolla seitsem�n vertaa enemm�n kuin toiset naapurinsa. Mutta kaikki kulovalkean j�ljet olivat jo kadonneet h�nen piirist�ns� ja tuuhea mets� kasvanut sijaan. - Ja t�m� on niiden seitsem�n veljen koto, joiden el�m�nvaiheita t�ss� nyt k�yn kertoilemaan.</td>
    </tr>
  </tbody>
</table>
</div>
<div class="ui tab" data-tab="6tr">Osallistujat</div>
</div>
</div>

 
<div class="eight wide column">
<div class="ui green segment">

<div class="ui list">
  <div class="item">
    <i class="big green hand lizard icon"></i>
    <div class="content">
      <h1>NFL</h1>
    </div>
  </div>
  </div>
  
<div class="ui horizontal list">
  <div class="item">
    <i class="red marker icon"></i>
    <div class="content">
      Baari
    </div>
  </div>
   <div class="item">
    <i class="orange calendar icon"></i>
    <div class="content">
      09.10.2016
    </div>
  </div>
        <div class="item">
    <i class="orange clock icon"></i>
    <div class="content">
      08:00
    </div>
  </div>
 </div>
  
 <div class="ui list"> 
  <div class="item">
    <i class="green user icon"></i>
    <div class="content">
      Aleksi Ahonen
    </div>
  </div>
   <div class="item">
    <i class="green mail icon"></i>
    <div class="content">
      <a href="mailto:jack@semantic-ui.com">h�p�h�p�@harraste.com</a>
    </div>
  </div>
</div>  

<div class="ui pointing secondary demo menu">
                <a class="active red item" data-tab="5tr">Lis�tietoja</a>
   				<a class="blue item" data-tab="6tr">Osallistujat</a>
   </div>
      <div class="ui active tab" data-tab="5tr">

 <table class="ui fixed padded green table" style="width:90%;"> 
  <thead>
    <tr><th><i class="green info icon"></i>Lis�tietoja</th>
  </tr></thead>
  <tbody>
    <tr>
      <td>Jukolan talo, etel�isess� H�meess�, seisoo er��n m�en pohjoisella rinteell�, liki Toukolan kyl��. Sen l�heisin ym�p�rist� on kivinen tanner, mutta alempana alkaa pellot, joissa, ennenkuin talo oli h�vi��n mennyt, aaltoili ter�inen vilja. Peltojen alla on niittu, apila�yr�inen, halkileikkaama monipolvisen ojan; ja runsaasti antoi se heini�, ennenkuin joutui laitumeksi kyl�n karjalle. Muutoin on talolla avaria metsi�, soita ja er�maita, jotka, t�m�n tilustan ensimm�isen perustajan oivallisen toiminnan kautta, olivat langenneet sille osaksi jo ison jaon k�ydess� entisin� aikoina. Silloinpa Jukolan is�nt�, pit�en enemm�n huolta j�lkeentulevainsa edusta kuin omasta parhaastansa, otti vastaan osaksensa kulon polttaman mets�n ja sai sill� keinolla seitsem�n vertaa enemm�n kuin toiset naapurinsa. Mutta kaikki kulovalkean j�ljet olivat jo kadonneet h�nen piirist�ns� ja tuuhea mets� kasvanut sijaan. - Ja t�m� on niiden seitsem�n veljen koto, joiden el�m�nvaiheita t�ss� nyt k�yn kertoilemaan.</td>
    </tr>
  </tbody>
</table>
</div>
<div class="ui tab" data-tab="6tr">Osallistujat</div>
</div>
</div> 
</div>   
  <!-- Tapahtumat loppuu -->


  <!-- footer -->
<div class="ui inverted vertical footer segment form-page" style="margin-top:20px;">
  <div class="ui container">
    H�rr�ste Oy &emsp; karvakeisarit@gmail.com &emsp; All Rights Reserved
  </div>
</div>

</body>
</html>