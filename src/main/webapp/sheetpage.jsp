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
<script type="text/javascript">$(document).ready(function(){
     $('#Join')
     .click(function(){
        $('#modaldiv2').modal('show');    
     });
});</script>
<!-- tabular script -->
<script type="text/javascript">$(document).ready(function(){
    $('.demo.menu .item').tab({history:false});
});
</script>
<!-- lis�� tapahtuman script -->
<script type="text/javascript">$(document).ready(function() {
    $('.ui.dropdown').dropdown();
});</script>
<script type="text/javascript" language="javascript">
function redirect()
{
    window.location.href="thankspage.jsp";
}
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
<center><h1 class="ui header" style="margin-top:20px;">Tapahtuman luominen</h1></center>
<div class="ui piled segment" style="width:85%; margin-right: auto;
    margin-left: auto;">
    													<!-- s�hk�posti googleen -->
<form class="ui form" action="https://script.google.com/macros/s/AKfycbxz_tnUpylXoQfxS14bs0Hy9Q3wBrX1ux72S56pxDw3KuCWwds/exec" method="post">
  <div class="two fields">
    <div class="field">
      <label>Tapahtuman nimi</label>
      <input name="tapahtumanimi" placeholder="Tapahtumasi nimi" type="text">
    </div>
    
<div class="ui form">
  <div class="field">
      <label>Tapahtuman tyyppi</label>
      <div class="ui selection dropdown">
          <input name="gender" type="hidden">
          <i class="dropdown icon"></i>
          <div class="default text">Valitse</div>
          <div class="menu">
              <div class="item" data-value="2">Pelit</div>
              <div class="item" data-value="1">Urheilu</div>
              <div class="item" data-value="0">Ruoka ja juoma</div>
          </div>
      </div>
  </div>
</div>

    </div>
    <div class="two fields">
    <div class="field">
      <label>Oma nimi</label>
      <input name="nimi" placeholder="Nimesi" type="text">
    </div>
    <div class="field">
      <label>S�hk�posti</label>
      <input name="email" placeholder="S-posti" type="email">
    </div>
    </div>
      <div class="two fields">
    <div class="field">
      <label>P�iv�m��r�</label>
      <input name="paivamaara" placeholder="Tapahtuman p�iv�m��r�" type="date">
    </div>
    <div class="field">
      <label>Aika</label>
      <input name="aika" placeholder="Tapahtuman aika" type="time">
    </div>
    </div>
    <div class="two fields">
    <div class="field">
      <label>Paikka</label>
      <input name="tapahtumapaikka" placeholder="Tapahtumalle sijainti" type="text">
    </div>
    
<div class="ui form">
  <div class="field">
      <label>Paikkakunta</label>
      <div class="ui selection dropdown">
          <input name="gender" type="hidden">
          <i class="dropdown icon"></i>
          <div class="default text">Valitse</div>
          <div class="menu">
              <div class="item" data-value="2">Helsinki</div>
              <div class="item" data-value="1">Vantaa</div>
              <div class="item" data-value="0">Espoo</div>
          </div>
      </div>
  </div>
</div>

    </div>
       <div class="two fields">
    <div class="field">
      <label>Lis�tietoja:</label>
      <textarea name="lisatiedot" placeholder="Lis�tiedot" type="text" rows="5" cols="10"></textarea>
    </div>
    </div>
    
 
 <input class="ui green submit button" type="submit" value="L�he
 t�" onclick="redirect();" tabindex="0">
  <div class="ui error message"></div>
  </div>
 
  
</form>
</div>
<!-- Tapahtuman luomisen sis�lt� loppuu -->
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
    <i class="red calendar icon"></i>
    <div class="content">
      09.10.2016
    </div>
  </div>
        <div class="item">
    <i class="red clock icon"></i>
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
     <div class="item">
    
    <div class="content">
      <button id="Join" class="positive ui button" style="float: right">Liity</button>
    </div>
  </div>
</div>  



<div class="ui pointing secondary demo menu">
                <a class="active red item" data-tab="1tr">Lis�tietoja</a>
   				<a class="green item" data-tab="2tr">Osallistujat</a>
   </div>
      <div class="ui active tab" data-tab="1tr">

 <table class="ui very basic collapsing celled green table" style="width:90%;">
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
<div class="ui tab" data-tab="2tr">
 <table class="ui very basic collapsing celled green table" style="width:90%;">
  <thead>
	<tr><th><i class="green users icon"></i>Osallistujat</th>
  </tr></thead>
  <tbody>
    <tr>
      <td>Mikko</td>
    </tr>
    <tr>
      <td>Kati</td>
    </tr>
    <tr>
      <td>Oskari</td>
    </tr>
  </tbody>
</table>
</div>
</div>
</div>

<!-- Yksi tapahtuma loppuu -->

<!-- liity alkaa -->
<div id="modaldiv2" class="ui basic modal">
  <i class="close icon"></i>
  <div class="header">
    Liity tapahtumaan
  </div>
  <div class="image content">
    <div class="ui medium image">
      <img src="">
    </div>
    <div class="description">
      <div class="ui header"></div>
      <p></p>
      <p></p>
    </div>
<div class="ui segment">
  <div class="ui inverted input">
    <input name="etunimi" placeholder="Etunimi" type="text">
  </div>
  <div class="ui inverted divider"></div>
  <div class="ui inverted input">
    <input name="sukunimi" placeholder="Sukunimi" type="text">
  </div>
</div>
  </div>
  <div class="actions">
    <div class="ui positive right labeled icon button">
      Liity
      <i class="checkmark icon"></i>
    </div>
  </div>
</div>
<!-- liity loppuu -->

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

 <table class="ui very basic collapsing celled green table" style="width:90%;"> 
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
<div class="ui tab" data-tab="4tr">
 <table class="ui very basic collapsing celled green table" style="width:90%;">
  <thead>
	<tr><th><i class="green users icon"></i>Osallistujat</th>
  </tr></thead>
  <tbody>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td></td>
    </tr>
    <tr>
      <td></td>
    </tr>
  </tbody>
</table>
</div>
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

 <table class="ui very basic collapsing celled green table" style="width:90%;">
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
<div class="ui tab" data-tab="6tr">
 <table class="ui very basic collapsing celled green table" style="width:90%;">
  <thead>
	<tr><th><i class="green users icon"></i>Osallistujat</th>
  </tr></thead>
  <tbody>
    <tr>
      <td>Mikko</td>
    </tr>
    <tr>
      <td>Kati</td>
    </tr>
    <tr>
      <td>Oskari</td>
    </tr>
  </tbody>
</table>
</div>
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
                <a class="active red item" data-tab="7tr">Lis�tietoja</a>
   				<a class="blue item" data-tab="8tr">Osallistujat</a>
   </div>
      <div class="ui active tab" data-tab="7tr">

 <table class="ui very basic collapsing celled green table" style="width:90%;">
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
<div class="ui tab" data-tab="8tr">
 <table class="ui very basic collapsing celled green table" style="width:90%;">
  <thead>
	<tr><th><i class="green users icon"></i>Osallistujat</th>
  </tr></thead>
  <tbody>
    <tr>
      <td>Mikko</td>
    </tr>
    <tr>
      <td>Kati</td>
    </tr>
    <tr>
      <td>Oskari</td>
    </tr>
  </tbody>
</table>
</div>
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