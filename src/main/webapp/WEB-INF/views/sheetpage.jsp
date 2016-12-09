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
<title>H�rr�ste Oy</title>
<link rel="stylesheet" type="text/css" href="../resources/styles/Semantic-UI-CSS-master/semantic.css">
<link rel="stylesheet" type="text/css" href="../resources/styles/Semantic-UI-CSS-master/components/modal.css">

<script src="../resources/styles/js/jquery-3.1.0.min.js"></script>
<script src="../resources/styles/Semantic-UI-CSS-master/semantic.js"></script>
<script src="../resources/styles/Semantic-UI-CSS-master/components/modal.js"></script>


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
<img class="ui centered medium circular image" style="margin-top:20px;" alt="H�rr�ste Oy" src="../resources/images/Harraste.png"/>

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
<form class="ui form" action="/tapahtumat/tapahtumat/lisaatapahtuma" id="lisaatapahtuma" method="post">
  <div class="two fields">
    <div class="field">
      <label>Tapahtuman nimi</label>
      <input name="tapahtumanimi" placeholder="Tapahtumasi nimi" type="text">
    </div>
    
<div class="ui form">
  <div class="field">
      <label>Tapahtuman tyyppi</label>
      <div class="ui selection dropdown">
          <input name="teema" type="hidden">
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
          <input name="paikkakunta" type="hidden">
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
    
 
 <input class="ui green submit button" type="submit" value="L�het�" onclick="redirect();" tabindex="0" style="float: right">
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
<c:forEach items="${tapahtumia}" var="t">
<div class="eight wide column">


<!-- Yksi tapahtuma -->
<div class="ui green segments">

  <div class="ui segment">
<div class="ui list">
  <div class="item">
    <i class="big green hand lizard icon"></i>
    <div class="content">
    <input type="hidden" id="tapahtuma_id" value="<c:out value="${t.tapid}"/>"/> 
      <h1><c:out value="${t.tapNimi}"/></h1>
    </div>
  </div>
  </div>
  </div>
  
  <div class="ui segment">
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
</div>
  </div>
  
  <div class="ui horizontal segments">
     <div class="ui segment">
    <div class="ui list">
  <div class="item" >
    <table class="ui very basic collapsing celled green table" style="width:auto;">
<thead>
	<tr><th><i class="green info icon"></i>Lis�tietoja</th>
  </tr>
  </thead>
  </table>
    <div class="content">
      <p><c:out value="${t.lisatiedot}"/></p>
    </div>
   </div>
  </div>
  </div>
    

    <div class="ui segment">
   <table class="ui very basic collapsing celled green table" style="width:auto;">
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
  </div>
  
  <div class="ui segment">
    <div class="ui list">
  <div class="item" >

   <div class="content">
    <div id="" modelAttribute="osallistuja" method="post">

<fieldset>	
<legend><h3>Tietosi</h3></legend>
 
 <div class="field">
  <label for="etunimi"></label>
  <input type="text" class="form-control" placeholder="Etunimi" id="etunimi">
  </div>
 
 <div class="form-group">
  <label for="sukunimi"></label>
  <input type="text" class="form-control" placeholder="Sukunimi" id="sukunimi">
  </div>
  
 <div class="form-group">
  <label for="email"></label>
  <input type="email" class="form-control" placeholder="S�hk�posti" id="email">
 </div>
 
<button id="liity" type="submit" class="positive ui button" value="${t.tapid}">Liity</button>
</fieldset>
	</div>
	</div>
	</div>
	</div>
	</div>
	</div>



</div>
</c:forEach>
</div>

<!-- Yksi tapahtuma loppuu -->

  <!-- footer -->
<div class="ui inverted vertical footer segment form-page" style="margin-top:20px;">
  <div class="ui container">
    H�rr�ste Oy &emsp; karvakeisarit@gmail.com &emsp; All Rights Reserved
  </div>
</div>
<script>
$(document).ready(function(){
	
	//piilottaa liittymislomakkeen aluksi
   // $("#liity_lomake").hide();
    
	
	//Avaa liittymislomakkeen painiketta painaessa
  //  $("#Join").on('click',function(){
    //    $("#liity_lomake").toggle('slow');
     //});
      
    // Ottaa lomakkeelta tiedot ja v�litt�� ne TapahtumaControllerille
    $("#liity").on('click',function Tallenna(){
     	var varFname= $('#etunimi').val();
     	var varSname= $('#sukunimi').val();
     	var varEmail= $('#email').val();
     	var varTapId= $(this).attr("value");
     	
     	
     	   $.get( "tapahtumaosallistuja?etunimi="+varFname+"&sukunimi="+varSname+"&email="+varEmail+"&tapahtumaId="+varTapId, function( data ) {
     		   alert( "Lis�ys onnistui!" );
     		 });
     	   
     	var varTapId= $('#tapahtuma_id').val();
     	   
     	   $.get( "tapahtumaosallistuja?tapahtuma_id="+varTapId+"&sukunimi="+varSname, function( data ) {
     		   alert( "Lis�ys onnistui!" );
     		 }); 
     });
}); 
</script>
</body>
</html>