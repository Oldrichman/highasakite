<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Härräste Oy</title>
<link rel="stylesheet" type="text/css" href="resources/styles/Semantic-UI-CSS-master/semantic.css">
<link rel="stylesheet" type="text/css" href="resources/styles/Semantic-UI-CSS-master/components/modal.css">

<script src="resources/styles/js/jquery-3.1.0.min.js"></script>
<script src="resources/styles/Semantic-UI-CSS-master/semantic.js"></script>
<script src="resources/styles/Semantic-UI-CSS-master/components/modal.js"></script>
</head>

<body>

<!-- ylä otsikko/logo -->
<img class="ui centered medium circular image" style="margin-top:20px;" alt="Härräste Oy" src="resources/images/Harraste.png"/>

<!-- Intro alue -->
<div class="ui piled segment" style="width:85%; margin-right: auto;
    margin-left: auto;">
  <center><h2 class="ui header">Tervetuloa harrastamaan ;)</h2></center>
</br>

<center><p>Etsi alla olevista tapahtumista mieleisesi tai luo itse uusi tapahtuma. Lähetä meille lomake ja me päivitämme sivut joka päivä klo 23.00. Älä siis lisää tapahtumaa samalle päivälle.</p></center>
</br>

<!-- Lisää tapahtuma nappula -->
<center><button id="logIn" class="positive ui button">Lisää tapahtuma</button></center>

<!-- Lisää tapahtuma scripti -->
<script type="text/javascript">$(document).ready(function(){
     $('#logIn').click(function(){
        $('#modaldiv').modal('show');    
     });
});</script>

<!-- Lisää tapahtuma sisältö -->
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
      <a href="mailto:jack@semantic-ui.com">höpöhöpö@harraste.com</a>
    </div>
  </div>
</div>  

 <table class="ui fixed table" style="width:90%;"> 
  <thead>
    <tr><th><i class="info icon"></i>Lisätietoja</th>
  </tr></thead>
  <tbody>
    <tr>
      <td>Jukolan talo, eteläisessä Hämeessä, seisoo erään mäen pohjoisella rinteellä, liki Toukolan kylää. Sen läheisin ym­päristö on kivinen tanner, mutta alempana alkaa pellot, joissa, ennenkuin talo oli häviöön mennyt, aaltoili teräinen vilja. Peltojen alla on niittu, apilaäyräinen, halkileikkaama monipolvisen ojan; ja runsaasti antoi se heiniä, ennenkuin joutui laitumeksi kylän karjalle. Muutoin on talolla avaria metsiä, soita ja erämaita, jotka, tämän tilustan ensimmäisen perustajan oivallisen toiminnan kautta, olivat langenneet sille osaksi jo ison jaon käydessä entisinä aikoina. Silloinpa Jukolan isäntä, pitäen enemmän huolta jälkeentulevainsa edusta kuin omasta parhaastansa, otti vastaan osaksensa kulon polttaman metsän ja sai sillä keinolla seitsemän vertaa enemmän kuin toiset naapurinsa. Mutta kaikki kulovalkean jäljet olivat jo kadonneet hänen piiristänsä ja tuuhea metsä kasvanut sijaan. - Ja tämä on niiden seitsemän veljen koto, joiden elämänvaiheita tässä nyt käyn kertoilemaan.</td>
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
      <a href="mailto:jack@semantic-ui.com">höpöhöpö@harraste.com</a>
    </div>
  </div>
</div>  

 <table class="ui fixed table" style="width:90%;"> 
  <thead>
    <tr><th><i class="info icon"></i>Lisätietoja</th>
  </tr></thead>
  <tbody>
    <tr>
      <td>Jukolan talo, eteläisessä Hämeessä, seisoo erään mäen pohjoisella rinteellä, liki Toukolan kylää. Sen läheisin ym­päristö on kivinen tanner, mutta alempana alkaa pellot, joissa, ennenkuin talo oli häviöön mennyt, aaltoili teräinen vilja. Peltojen alla on niittu, apilaäyräinen, halkileikkaama monipolvisen ojan; ja runsaasti antoi se heiniä, ennenkuin joutui laitumeksi kylän karjalle. Muutoin on talolla avaria metsiä, soita ja erämaita, jotka, tämän tilustan ensimmäisen perustajan oivallisen toiminnan kautta, olivat langenneet sille osaksi jo ison jaon käydessä entisinä aikoina. Silloinpa Jukolan isäntä, pitäen enemmän huolta jälkeentulevainsa edusta kuin omasta parhaastansa, otti vastaan osaksensa kulon polttaman metsän ja sai sillä keinolla seitsemän vertaa enemmän kuin toiset naapurinsa. Mutta kaikki kulovalkean jäljet olivat jo kadonneet hänen piiristänsä ja tuuhea metsä kasvanut sijaan. - Ja tämä on niiden seitsemän veljen koto, joiden elämänvaiheita tässä nyt käyn kertoilemaan.</td>
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
      <a href="mailto:jack@semantic-ui.com">höpöhöpö@harraste.com</a>
    </div>
  </div>
</div>  

 <table class="ui fixed table" style="width:90%;"> 
  <thead>
    <tr><th><i class="info icon"></i>Lisätietoja</th>
  </tr></thead>
  <tbody>
    <tr>
      <td>Jukolan talo, eteläisessä Hämeessä, seisoo erään mäen pohjoisella rinteellä, liki Toukolan kylää. Sen läheisin ym­päristö on kivinen tanner, mutta alempana alkaa pellot, joissa, ennenkuin talo oli häviöön mennyt, aaltoili teräinen vilja. Peltojen alla on niittu, apilaäyräinen, halkileikkaama monipolvisen ojan; ja runsaasti antoi se heiniä, ennenkuin joutui laitumeksi kylän karjalle. Muutoin on talolla avaria metsiä, soita ja erämaita, jotka, tämän tilustan ensimmäisen perustajan oivallisen toiminnan kautta, olivat langenneet sille osaksi jo ison jaon käydessä entisinä aikoina. Silloinpa Jukolan isäntä, pitäen enemmän huolta jälkeentulevainsa edusta kuin omasta parhaastansa, otti vastaan osaksensa kulon polttaman metsän ja sai sillä keinolla seitsemän vertaa enemmän kuin toiset naapurinsa. Mutta kaikki kulovalkean jäljet olivat jo kadonneet hänen piiristänsä ja tuuhea metsä kasvanut sijaan. - Ja tämä on niiden seitsemän veljen koto, joiden elämänvaiheita tässä nyt käyn kertoilemaan.</td>
    </tr>
  </tbody>
</table>
  </div>
  </div>
  
  <!-- Tapahtumat loppuu -->
</div>
    
</body>
</html>