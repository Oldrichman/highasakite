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


<!-- Tämä teksti kuuluu sheet pagelle heti alkuun bodyn sisään -->
<!-- !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
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
<!-- !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! -->
<!-- Osio loppuu -->


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
    
 
 <input class="ui green submit button" type="submit" value="Lähetä" onclick="redirect();" tabindex="0">
  <div class="ui error message"></div>
  </div>
 
  
</form>
</div>

<!-- <script data-cfasync="false" type="text/javascript" -->
<!-- src="https://cdn.rawgit.com/dwyl/html-form-send-email-via-google-script-without-server/master/form-submission-handler.js"></script> -->


</body>
</html>