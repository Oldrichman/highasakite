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

<!-- Lis�� tapahtuma scripti -->
<script type="text/javascript">$(document).ready(function(){
     $('#logIn').click(function(){
        $('#modaldiv').modal('show');    
     });
});</script>

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
    <i class="marker icon"></i>
    <div class="content">
      Baari
    </div>
  </div>
   <div class="item">
    <i class="calendar icon"></i>
    <div class="content">
      09.10.2016
    </div>
  </div>
        <div class="item">
    <i class="clock icon"></i>
    <div class="content">
      08:00
    </div>
  </div>
 </div>
  
 <div class="ui list"> 
  <div class="item">
    <i class="user icon"></i>
    <div class="content">
      Aleksi Ahonen
    </div>
  </div>
   <div class="item">
    <i class="mail icon"></i>
    <div class="content">
      <a href="mailto:jack@semantic-ui.com">h�p�h�p�@harraste.com</a>
    </div>
  </div>
</div>  

 <table class="ui fixed table" style="width:90%;"> 
  <thead>
    <tr><th><i class="info icon"></i>Lis�tietoja</th>
  </tr></thead>
  <tbody>
    <tr>
      <td>Jukolan talo, etel�isess� H�meess�, seisoo er��n m�en pohjoisella rinteell�, liki Toukolan kyl��. Sen l�heisin ym�p�rist� on kivinen tanner, mutta alempana alkaa pellot, joissa, ennenkuin talo oli h�vi��n mennyt, aaltoili ter�inen vilja. Peltojen alla on niittu, apila�yr�inen, halkileikkaama monipolvisen ojan; ja runsaasti antoi se heini�, ennenkuin joutui laitumeksi kyl�n karjalle. Muutoin on talolla avaria metsi�, soita ja er�maita, jotka, t�m�n tilustan ensimm�isen perustajan oivallisen toiminnan kautta, olivat langenneet sille osaksi jo ison jaon k�ydess� entisin� aikoina. Silloinpa Jukolan is�nt�, pit�en enemm�n huolta j�lkeentulevainsa edusta kuin omasta parhaastansa, otti vastaan osaksensa kulon polttaman mets�n ja sai sill� keinolla seitsem�n vertaa enemm�n kuin toiset naapurinsa. Mutta kaikki kulovalkean j�ljet olivat jo kadonneet h�nen piirist�ns� ja tuuhea mets� kasvanut sijaan. - Ja t�m� on niiden seitsem�n veljen koto, joiden el�m�nvaiheita t�ss� nyt k�yn kertoilemaan.</td>
    </tr>
  </tbody>
</table>
</div>
</div>

<!-- Yksi tapahtuma loppuu -->

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
    <i class="marker icon"></i>
    <div class="content">
      Baari
    </div>
  </div>
   <div class="item">
    <i class="calendar icon"></i>
    <div class="content">
      09.10.2016
    </div>
  </div>
        <div class="item">
    <i class="clock icon"></i>
    <div class="content">
      08:00
    </div>
  </div>
 </div>
  
 <div class="ui list"> 
  <div class="item">
    <i class="user icon"></i>
    <div class="content">
      Aleksi Ahonen
    </div>
  </div>
   <div class="item">
    <i class="mail icon"></i>
    <div class="content">
      <a href="mailto:jack@semantic-ui.com">h�p�h�p�@harraste.com</a>
    </div>
  </div>
</div>  

 <table class="ui fixed table" style="width:90%;"> 
  <thead>
    <tr><th><i class="info icon"></i>Lis�tietoja</th>
  </tr></thead>
  <tbody>
    <tr>
      <td>Jukolan talo, etel�isess� H�meess�, seisoo er��n m�en pohjoisella rinteell�, liki Toukolan kyl��. Sen l�heisin ym�p�rist� on kivinen tanner, mutta alempana alkaa pellot, joissa, ennenkuin talo oli h�vi��n mennyt, aaltoili ter�inen vilja. Peltojen alla on niittu, apila�yr�inen, halkileikkaama monipolvisen ojan; ja runsaasti antoi se heini�, ennenkuin joutui laitumeksi kyl�n karjalle. Muutoin on talolla avaria metsi�, soita ja er�maita, jotka, t�m�n tilustan ensimm�isen perustajan oivallisen toiminnan kautta, olivat langenneet sille osaksi jo ison jaon k�ydess� entisin� aikoina. Silloinpa Jukolan is�nt�, pit�en enemm�n huolta j�lkeentulevainsa edusta kuin omasta parhaastansa, otti vastaan osaksensa kulon polttaman mets�n ja sai sill� keinolla seitsem�n vertaa enemm�n kuin toiset naapurinsa. Mutta kaikki kulovalkean j�ljet olivat jo kadonneet h�nen piirist�ns� ja tuuhea mets� kasvanut sijaan. - Ja t�m� on niiden seitsem�n veljen koto, joiden el�m�nvaiheita t�ss� nyt k�yn kertoilemaan.</td>
    </tr>
  </tbody>
</table>
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
    <i class="marker icon"></i>
    <div class="content">
      Baari
    </div>
  </div>
   <div class="item">
    <i class="calendar icon"></i>
    <div class="content">
      09.10.2016
    </div>
  </div>
        <div class="item">
    <i class="clock icon"></i>
    <div class="content">
      08:00
    </div>
  </div>
 </div>
  
 <div class="ui list"> 
  <div class="item">
    <i class="user icon"></i>
    <div class="content">
      Aleksi Ahonen
    </div>
  </div>
   <div class="item">
    <i class="mail icon"></i>
    <div class="content">
      <a href="mailto:jack@semantic-ui.com">h�p�h�p�@harraste.com</a>
    </div>
  </div>
</div>  

 <table class="ui fixed table" style="width:90%;"> 
  <thead>
    <tr><th><i class="info icon"></i>Lis�tietoja</th>
  </tr></thead>
  <tbody>
    <tr>
      <td>Jukolan talo, etel�isess� H�meess�, seisoo er��n m�en pohjoisella rinteell�, liki Toukolan kyl��. Sen l�heisin ym�p�rist� on kivinen tanner, mutta alempana alkaa pellot, joissa, ennenkuin talo oli h�vi��n mennyt, aaltoili ter�inen vilja. Peltojen alla on niittu, apila�yr�inen, halkileikkaama monipolvisen ojan; ja runsaasti antoi se heini�, ennenkuin joutui laitumeksi kyl�n karjalle. Muutoin on talolla avaria metsi�, soita ja er�maita, jotka, t�m�n tilustan ensimm�isen perustajan oivallisen toiminnan kautta, olivat langenneet sille osaksi jo ison jaon k�ydess� entisin� aikoina. Silloinpa Jukolan is�nt�, pit�en enemm�n huolta j�lkeentulevainsa edusta kuin omasta parhaastansa, otti vastaan osaksensa kulon polttaman mets�n ja sai sill� keinolla seitsem�n vertaa enemm�n kuin toiset naapurinsa. Mutta kaikki kulovalkean j�ljet olivat jo kadonneet h�nen piirist�ns� ja tuuhea mets� kasvanut sijaan. - Ja t�m� on niiden seitsem�n veljen koto, joiden el�m�nvaiheita t�ss� nyt k�yn kertoilemaan.</td>
    </tr>
  </tbody>
</table>
  </div>
  </div>
  
  <!-- Tapahtumat loppuu -->
</div>
    
</body>
</html>