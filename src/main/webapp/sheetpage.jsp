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


<!-- Lisää tapahtuma scripti -->
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
<!-- lisää tapahtuman script -->
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

<!-- Lisää tapahtuma sisältö -->
<div id="modaldiv" class="ui basic modal">
  <i class="close icon"></i>
  <div class="header">
  </div>
<center><h1 class="ui header" style="margin-top:20px;">Tapahtuman luominen</h1></center>
<div class="ui piled segment" style="width:85%; margin-right: auto;
    margin-left: auto;">
    													<!-- sähköposti googleen -->
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
      <label>Sähköposti</label>
      <input name="email" placeholder="S-posti" type="email">
    </div>
    </div>
      <div class="two fields">
    <div class="field">
      <label>Päivämäärä</label>
      <input name="paivamaara" placeholder="Tapahtuman päivämäärä" type="date">
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
      <label>Lisätietoja:</label>
      <textarea name="lisatiedot" placeholder="Lisätiedot" type="text" rows="5" cols="10"></textarea>
    </div>
    </div>
    
 
 <input class="ui green submit button" type="submit" value="Lähe
 tä" onclick="redirect();" tabindex="0">
  <div class="ui error message"></div>
  </div>
 
  
</form>
</div>
<!-- Tapahtuman luomisen sisältö loppuu -->
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
      <a href="mailto:jack@semantic-ui.com">höpöhöpö@harraste.com</a>
    </div>
  </div>
     <div class="item">
    
    <div class="content">
      <button id="Join" class="positive ui button" style="float: right">Liity</button>
    </div>
  </div>
</div>  



<div class="ui pointing secondary demo menu">
                <a class="active red item" data-tab="1tr">Lisätietoja</a>
   				<a class="green item" data-tab="2tr">Osallistujat</a>
   </div>
      <div class="ui active tab" data-tab="1tr">

 <table class="ui very basic collapsing celled green table" style="width:90%;">
  <thead>
	<tr><th><i class="green info icon"></i>Lisätietoja</th>
  </tr></thead>
  <tbody>
    <tr>
      <td>Jukolan talo, eteläisessä Hämeessä, seisoo erään mäen pohjoisella rinteellä, liki Toukolan kylää. Sen läheisin ym­päristö on kivinen tanner, mutta alempana alkaa pellot, joissa, ennenkuin talo oli häviöön mennyt, aaltoili teräinen vilja. Peltojen alla on niittu, apilaäyräinen, halkileikkaama monipolvisen ojan; ja runsaasti antoi se heiniä, ennenkuin joutui laitumeksi kylän karjalle. Muutoin on talolla avaria metsiä, soita ja erämaita, jotka, tämän tilustan ensimmäisen perustajan oivallisen toiminnan kautta, olivat langenneet sille osaksi jo ison jaon käydessä entisinä aikoina. Silloinpa Jukolan isäntä, pitäen enemmän huolta jälkeentulevainsa edusta kuin omasta parhaastansa, otti vastaan osaksensa kulon polttaman metsän ja sai sillä keinolla seitsemän vertaa enemmän kuin toiset naapurinsa. Mutta kaikki kulovalkean jäljet olivat jo kadonneet hänen piiristänsä ja tuuhea metsä kasvanut sijaan. - Ja tämä on niiden seitsemän veljen koto, joiden elämänvaiheita tässä nyt käyn kertoilemaan.</td>
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
      <h1>Lätkää</h1>
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
                <a class="active red item" data-tab="3tr">Lisätietoja</a>
   				<a class="blue item" data-tab="4tr">Osallistujat</a>
   </div>
      <div class="ui active tab" data-tab="3tr">

 <table class="ui very basic collapsing celled green table" style="width:90%;"> 
  <thead>
    <tr><th><i class="green info icon"></i>Lisätietoja</th>
  </tr></thead>
  <tbody>
    <tr>
      <td>Hello! Haluaisin seuraa lätkäkatsomoon. Go Go Ruotsi!!</td>
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
      <a href="mailto:jack@semantic-ui.com">höpöhöpö@harraste.com</a>
    </div>
  </div>
</div>  

<div class="ui pointing secondary demo menu">
                <a class="active red item" data-tab="5tr">Lisätietoja</a>
   				<a class="blue item" data-tab="6tr">Osallistujat</a>
   </div>
      <div class="ui active tab" data-tab="5tr">

 <table class="ui very basic collapsing celled green table" style="width:90%;">
  <thead>
	<tr><th><i class="green info icon"></i>Lisätietoja</th>
  </tr></thead>
  <tbody>
    <tr>
      <td>Jukolan talo, eteläisessä Hämeessä, seisoo erään mäen pohjoisella rinteellä, liki Toukolan kylää. Sen läheisin ym­päristö on kivinen tanner, mutta alempana alkaa pellot, joissa, ennenkuin talo oli häviöön mennyt, aaltoili teräinen vilja. Peltojen alla on niittu, apilaäyräinen, halkileikkaama monipolvisen ojan; ja runsaasti antoi se heiniä, ennenkuin joutui laitumeksi kylän karjalle. Muutoin on talolla avaria metsiä, soita ja erämaita, jotka, tämän tilustan ensimmäisen perustajan oivallisen toiminnan kautta, olivat langenneet sille osaksi jo ison jaon käydessä entisinä aikoina. Silloinpa Jukolan isäntä, pitäen enemmän huolta jälkeentulevainsa edusta kuin omasta parhaastansa, otti vastaan osaksensa kulon polttaman metsän ja sai sillä keinolla seitsemän vertaa enemmän kuin toiset naapurinsa. Mutta kaikki kulovalkean jäljet olivat jo kadonneet hänen piiristänsä ja tuuhea metsä kasvanut sijaan. - Ja tämä on niiden seitsemän veljen koto, joiden elämänvaiheita tässä nyt käyn kertoilemaan.</td>
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
      <a href="mailto:jack@semantic-ui.com">höpöhöpö@harraste.com</a>
    </div>
  </div>
</div>  

<div class="ui pointing secondary demo menu">
                <a class="active red item" data-tab="7tr">Lisätietoja</a>
   				<a class="blue item" data-tab="8tr">Osallistujat</a>
   </div>
      <div class="ui active tab" data-tab="7tr">

 <table class="ui very basic collapsing celled green table" style="width:90%;">
  <thead>
	<tr><th><i class="green info icon"></i>Lisätietoja</th>
  </tr></thead>
  <tbody>
    <tr>
      <td>Jukolan talo, eteläisessä Hämeessä, seisoo erään mäen pohjoisella rinteellä, liki Toukolan kylää. Sen läheisin ym­päristö on kivinen tanner, mutta alempana alkaa pellot, joissa, ennenkuin talo oli häviöön mennyt, aaltoili teräinen vilja. Peltojen alla on niittu, apilaäyräinen, halkileikkaama monipolvisen ojan; ja runsaasti antoi se heiniä, ennenkuin joutui laitumeksi kylän karjalle. Muutoin on talolla avaria metsiä, soita ja erämaita, jotka, tämän tilustan ensimmäisen perustajan oivallisen toiminnan kautta, olivat langenneet sille osaksi jo ison jaon käydessä entisinä aikoina. Silloinpa Jukolan isäntä, pitäen enemmän huolta jälkeentulevainsa edusta kuin omasta parhaastansa, otti vastaan osaksensa kulon polttaman metsän ja sai sillä keinolla seitsemän vertaa enemmän kuin toiset naapurinsa. Mutta kaikki kulovalkean jäljet olivat jo kadonneet hänen piiristänsä ja tuuhea metsä kasvanut sijaan. - Ja tämä on niiden seitsemän veljen koto, joiden elämänvaiheita tässä nyt käyn kertoilemaan.</td>
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
    Härräste Oy &emsp; karvakeisarit@gmail.com &emsp; All Rights Reserved
  </div>
</div>

</body>
</html>