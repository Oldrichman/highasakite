<%@ page session="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Härräste Oy</title>
<link rel="stylesheet" type="text/css" href="../resources/styles/Semantic-UI-CSS-master/semantic.css">
<link rel="stylesheet" type="text/css" href="../resources/styles/Semantic-UI-CSS-master/components/modal.css">

<script src="../resources/styles/js/jquery-3.1.0.min.js"></script>
<script src="../resources/styles/Semantic-UI-CSS-master/semantic.js"></script>
<script src="../resources/styles/Semantic-UI-CSS-master/components/modal.js"></script>


<!-- Lisää tapahtuma scripti -->
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
<img class="ui centered medium circular image" style="margin-top:20px;" alt="Härräste Oy" src="../resources/images/Harraste.png"/>

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

<c:forEach items="${tapahtumia}" var="t">

<!-- Yksi tapahtuma -->
<div class="eight wide column">
<div class="ui green segment">

<div class="ui list">
  <div class="item">
    <i class="big green hand lizard icon"></i>
    <div class="content">
    <input type="hidden" id="tapahtuma_id" value="<c:out value="${t.tapid}"/>"/> 
      <h1><c:out value="${t.tapNimi}"/></h1>
    </div>
  </div>
  </div>
  
<div class="ui horizontal list">
  <div class="item">
    <i class="red marker icon"></i>
    <div class="content">
      <c:out value="${t.paikka}"/>
    </div>
  </div>
   <div class="item">
    <i class="red calendar icon"></i>
    <div class="content">
      <fmt:formatDate pattern="dd.MM.yyyy" value="${t.pvm}"/>
    </div>
  </div>
        <div class="item">
    <i class="red clock icon"></i>
    <div class="content">
      <c:out value="${t.aika}"/>
    </div>
  </div>
 </div>
  
 <div class="ui list"> 
  <div class="item">
    <i class="green user icon"></i>
    <div class="content">
      <c:out value="${t.tapluojanimi}"/>
    </div>
  </div>
   <div class="item">
    <i class="green mail icon"></i>
    <div class="content">
      <a href="mailto:jack@semantic-ui.com"><c:out value="${t.tapluojaemail}"/></a>
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
      <td><c:out value="${t.lisatiedot}"/></td>
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
 <c:forEach items="${t.osallistujat}" var="os">
  	<tr>
    <td><c:out value="${os.etunimi}"/> <c:out value="${os.sukunimi}"/></td> 
    </tr>
  </c:forEach>
  </tbody>
</table>
</div>

<!-- liittyminen -->

<div id="liity_lomake" modelAttribute="osallistuja" method="post" style="padding:10px; border-style:solid; border-line:1px; border-radius:10px">
<fieldset>	
<legend>Tietosi</legend>
 
 <div class="form-group">
  <label for="etunimi">Etunimi:</label>
  <input type="text" class="form-control" id="etunimi">
  </div>
 
 <div class="form-group">
  <label for="sukunimi">Sukunimi:</label>
  <input type="text" class="form-control" id="sukunimi">
  </div>
  
 <div class="form-group">
  <label for="email">Sähköposti:</label>
  <input type="email" class="form-control" id="email">
 </div>
 
<button id="liity" type="submit" class="btn btn-default" value="${t.tapid}">Liity</button>
</fieldset>
</div>

<!-- liittyminen loppuu -->

</div>
</div>
</c:forEach>
</div>

<!-- Yksi tapahtuma loppuu -->

  <!-- footer -->
<div class="ui inverted vertical footer segment form-page" style="margin-top:20px;">
  <div class="ui container">
    Härräste Oy &emsp; karvakeisarit@gmail.com &emsp; All Rights Reserved
  </div>
</div>
<script>
$(document).ready(function(){
	
	//piilottaa liittymislomakkeen aluksi
    $("#liity_lomake").hide();
    
	
	//Avaa liittymislomakkeen painiketta painaessa
    $("#Join").on('click',function(){
        $("#liity_lomake").toggle('slow');
     });
      
    // Ottaa lomakkeelta tiedot ja välittää ne TapahtumaControllerille
    $("#liity").on('click',function Tallenna(){
     	var varFname= $('#etunimi').val();
     	var varSname= $('#sukunimi').val();
     	var varEmail= $('#email').val();
     	var varTapId= $(this).attr("value");
     	
     	
     	   $.get( "tapahtumaosallistuja?etunimi="+varFname+"&sukunimi="+varSname+"&email="+varEmail+"&tapahtumaId="+varTapId, function( data ) {
     		   alert( "Lisäys onnistui!" );
     		 });
     	   
     /*	var varTapId= $('#tapahtuma_id').val();
     	   
     	   $.get( "tapahtumaosallistuja?tapahtuma_id="+varTapId+"&sukunimi="+varSname, function( data ) {
     		   alert( "Lisäys onnistui!" );
     		 }); */
     });
}); 
</script>
</body>
</html>