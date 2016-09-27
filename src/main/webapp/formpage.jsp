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
<center><h1 class="ui header" style="margin-top:20px;">Tapahtuman luominen</h1></center>
<div class="ui piled segment" style="width:85%; margin-right: auto;
    margin-left: auto;">
    
<form class="ui form">
  <div class="two fields">
    <div class="field">
      <label>Tapahtuman nimi</label>
      <input name="tapahtumanimi" placeholder="Tapahtumasi nimi" type="text">
    </div>
    <div class="field">
      <label>Lisää oma nimi</label>
      <input name="nimi" placeholder="Nimesi" type="text">
    </div>
    </div>
      <div class="two fields">
    <div class="field">
      <label>Lisää päivämäärä</label>
      <input name="paivamaara" placeholder="päivämäärä" type="date">
    </div>
    <div class="field">
      <label>Lisää aika</label>
      <input name="aika" placeholder="Tapahtuman aika" type="time">
    </div>
    </div>
    <div class="two fields">
    <div class="field">
      <label>Lisää paikka</label>
      <input name="tapahtumapaikka" placeholder="Paikka" type="text">
    </div>
    <div class="field">
      <label>Sähköposti</label>
      <input name="email" placeholder="S-posti" type="email">
    </div>
    </div>
       <div class="two fields">
    <div class="field">
      <label>Lisätietoja:</label>
      <textarea name="lisatiedot" placeholder="Lisätiedot" type="text" rows="5" cols="10"></textarea>
    </div>
    </div>
 
  <div class="ui submit button">Submit</div>
  <div class="ui error message"></div>
</form>
</div>


</body>
</html>