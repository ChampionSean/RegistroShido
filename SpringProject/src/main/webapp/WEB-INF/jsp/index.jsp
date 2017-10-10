<%-- 
    Document   : index
    Created on : 15-oct-2016, 6:37:33
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


                <form name="nombreDelFormulario" class="form">
                    <img id="imagen" src="<c:url value="/imagenes/Logo2.png" />" width="450" height="150">
                    <input type="search" placeholder="numero" list="numeros" name="cuenta" id="numero" onblur="revisarnumero(this)">
                    <datalist id="numeros">
                         <c:forEach var="pre" items="${pres}">
                            <option value="${pre.orderr}">      
                                </c:forEach>
                                <c:forEach var="lle" items="${lles}">
                            <option value="${lle.orderr}">      
                                </c:forEach>
                    </datalist>
                    <input type="search" placeholder="correo" list="correos" id="correo" name="correo" value="" onblur="revisaremail(this)">
                    <datalist id="correos">
                        
                        <c:forEach var="lle" items="${lles}">
                            <option value="${lle.email}">      
                                </c:forEach>
                         <c:forEach var="pre" items="${pres}">
                            <option value="${pre.email}">      
                                </c:forEach>
                    </datalist>
                    <input type="search" placeholder="nombre" list="nombres" id="nombre" name="nombre" value="">
                    <datalist id="nombres">
                        
                        <c:forEach var="lle" items="${lles}">
                            <option value="${lle.nombre}|${lle.apellido}">      
                                </c:forEach>
                         <c:forEach var="pre" items="${pres}">
                            <option value="${pre.nombre}|${pre.apellido}">      
                                </c:forEach>
                    </datalist>
                    
                    <button type="button" id="login-button1" onClick="enviar2('/SpringProject/registro')" >Nuevo registro</button>
                    <button type="button" id="login-button2" onClick="enviar('/SpringProject/cregistro')">Registrarse</button>
                </form>
                    

            </div>
            <div id="errorCORREO"></div>
            <div id="errorNUMERO"></div>	
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
        <script src="<c:url value="/js/jquery-3.1.1.min.js" /> "></script>
        <script src="<c:url value="/js/sweetalert.min.js" /> "></script>

        <script>
                        function enviar(pagina) {
                            var valor = document.getElementById("numero").value;
                            var valor2 = document.getElementById("correo").value;
                            var valor3 = document.getElementById("nombre").value;
                            var expresion = /^([0-9])+$/;
                            var expresion2 = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,4})+$/;
                            var expresion3 = /^([a-zA-ZÑñáéíóúÉÁÍÓÚ|\s])*$/;
                            if (expresion.test(valor) || expresion2.test(valor2) || expresion3.test(valor3)) {
        //document.write(valor);
                                document.nombreDelFormulario.action = pagina;
                                document.nombreDelFormulario.method = "post";
                                document.nombreDelFormulario.submit();
                                
                            } else {
                                sweetAlert("Opps! campo mal escrito ");
                            }
                        }
        </script>
        <script>
            function enviar2(pagina) {
                document.nombreDelFormulario.action = pagina;
                document.nombreDelFormulario.method = "get"; 
                document.nombreDelFormulario.submit();

            }
        </script>

        <script>
            function revisaremail(elemento) {
                if (elemento.value != "") {
                    var dato = elemento.value;
                    var expresion = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,4})+$/;
                    if (!expresion.test(dato)) {
                        elemento.className = 'error';
                        document.getElementById('errorCORREO').innerHTML = "Formato de correo incorrecto"
                    } else {
                        elemento.className = 'form-input';
                        document.getElementById('errorCORREO').innerHTML = ""
                    }
                }
            }

            function revisarnumero(elemento) {
                if (elemento.value != "") {
                    var dato = elemento.value;
                    var expresion = /^([0-9])*$/;
                    if (!expresion.test(dato)) {
                        elemento.className = 'error';
                        document.getElementById('errorNUMERO').innerHTML = "Escribiste letras donde van numeros"
                    } else {
                        elemento.className = 'form-input';
                        document.getElementById('errorNUMERO').innerHTML = ""
                    }
                }
            }
        </script>




    </body>
</html>
