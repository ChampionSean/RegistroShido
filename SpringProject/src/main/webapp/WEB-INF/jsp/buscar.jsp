<%-- 
    Document   : buscar
    Created on : 15-oct-2016, 7:46:38
    Author     : Marco
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8">
    <title>Registro</title>
    
    
    
    
        <link rel="stylesheet" href="<c:url value="/css/style.css" /> ">
        <link rel="stylesheet" type="text/css" href="<c:url value="/css/sweetalert.css" /> ">

    
    
    
    
  </head>

  <body>
 
    <div class="wrapper">
	<div class="container">
		
		
		<form class="form">
			 <img id="imagen" src="<c:url value="/imagenes/Logo3.png" /> " width="450" height="150">
			<input type="text" value="Registrados = ${numero}" readonly>
			<input type="search" placeholder="buscar" list="doe">
                        <datalist id="doe">
                            <c:forEach var="lle" items="${llega}">
                            <option value="${lle.nombre} ${lle.apellido}">      
                                </c:forEach>
                        </datalist>
			
			
		
	
		</form>
	</div>
	
	<ul class="bg-bubbles">
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
		<li></li>
	</ul>
</div>
    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

     

    
    
  </body>
</html>
