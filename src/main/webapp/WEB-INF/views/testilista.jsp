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
    
    <c:forEach items="${tapahtumia}" var="t">

<!-- Yksi tapahtuma -->
<div class="eight wide column">
<div class="ui green segment">

<div class="ui list">
  <div class="item">
    <i class="big green hand lizard icon"></i>
    <div class="content">
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

</c:forEach>
</div>

<!-- Yksi tapahtuma loppuu -->



  <!-- footer -->
<div class="ui inverted vertical footer segment form-page" style="margin-top:20px;">
  <div class="ui container">
    Härräste Oy &emsp; karvakeisarit@gmail.com &emsp; All Rights Reserved
  </div>
</div>

</body>
</html>