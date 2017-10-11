<%-- 
    Document   : registro
    Created on : 15-oct-2016, 7:28:53
    Author     : Marco
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html >
  <head>
    <meta charset="UTF-8">
    <title>Registro</title>
     
        <link rel="stylesheet" href="<c:url value="/css/style.css" /> ">
        <link rel="stylesheet" type="text/css" href="<c:url value="/css/sweetalert.css" /> ">
    
     </head>

  <body>
  	
    <div class="wrapper">
	<div class="container">
		<!--<h1>GOVERNMENT INNOVATION FORUM 2016</h1>-->
 
     
                <form action="/SpringProject/registratt" class="form" name="nombreDelFormulario">
      <img id="imagen" src="<c:url value="/imagenes/Logo3.png" /> " width="450" height="150">
      <input name="id" id="caja" value="${objeto.orderr}${numero}" type="text" readonly>
      <p id="nombreP">NOMBRE:</p><input name="nombre" value="${objeto.nombre}" type="text" placeholder="Nombre(s)" id="nombre" onblur=" revisarNombreVacio(this); revisarnombre(this);">
      <p id="apellidosP">APELLIDOS:</p><input value="${objeto.apellido}" name="apellido" type="text" placeholder="Apellidos" id="apellidos" onblur="revisarApellidosVacio(this); revisarapellidos(this)">
      <p id="empresaP">EMPRESA:</p><input type="text" name="empresa" value="${objeto.empresa}" placeholder="Empresa" id="empresa" onblur="revisarempresa(this)">
      <p id="puestoP">PUESTO:</p><input name="puesto" type="text" value="${objeto.puesto}" placeholder="Puesto" id="puesto" onblur="revisarPuestoVacio(this)"><!--****-->
      <p id="telefonoP">TELEFONO:</p><input name="telefono" type="text" value="${objeto.telefono}" placeholder="Telefono" id="telefono" onblur="revisarTelefonoVacio(this)">
      <p id="calleP">CALLE Y NUMERO:</p><input value="${objeto.domicilio}" name="domicilio" type="text" placeholder="Calle y Numero" id="domicilio" onblur="revisardireccion(this); ">
      <p id="coloniaP">COLONIA:</p><input name="colonia" value="${objeto.colonia}" type="text" placeholder="Colonia" id="colonia"  
      onblur="revisarcolonia(this)">
      <p id="delegacionP">DELEGACION:</p> <input name="delegacion" value="${objeto.delegacion}" type="text" placeholder="Delegacion" id="delegacion" onblur="revisarDelegacionVacia(this)">
      <p id="ciudadP">CIUDAD:</p>  <input type="text" name="ciudad" value="${objeto.ciudad}" placeholder="Ciudad" id="ciudad" onblur="revisarCiudadVacia(this)">
       <p id="paisP">PAIS:</p><input type="text" name="pais" placeholder="Pais" value="${objeto.pais}" id="pais" onblur="revisarPaisVacio(this); revisarpais(this)">
       <p id="postalP">CODIGO POSTAL:</p><input name="work" type="text" value="${objeto.worksizp}" placeholder="Codigo Postal" id="codigopostal" onblur="revisarCodigoVacio(this)">
      <p id="correoP">CORREO:</p><input type="text" name="email" value="@" placeholder="Email" id="correo" onblur="revisaremail(this);" value="@"><!--****-->
     <p id="fechaP">FECHA DE ORDEN :</p><input name="orderd" type="text" value="${objeto.orderdate}" placeholder="fecha de orden" id="fechadeorden">
    <p id="descuentoP">DESCUENTO:</p> <input name="disc" type="text" placeholder="descuento" value="${objeto.disc}" id="descuento">
  
      <button type="button" id="login-button"> Genera El Codigo de Barras</button>
      <!-- onclick='$("#bcTarget").barcode( barras.value, "code39",{barWidth:3, barHeight:40});'>Generar Codigo</button> -->
      <button type="button" id="boton2">Generar El Gafete</button>
     
    </form>
     <div id="errorC"></div>  
       <div id="errorN"></div>
       <div id="errorNV"></div> 
       <div id="errorA"></div> 
       <div id="errorAV"></div>
       <div id="errorE"></div> 
       <div id="errorP"></div>
       <div id="errorPV"></div>
       <div id="errorT"></div>
        <div id="errorTV"></div> 
        <div id="errorD"></div>
        <div id="errorColo"></div> 
        <div id="errorDEL"></div>
        <div id="errorDELV"></div>
       <div id="errorCIU"></div>
       <div id="errorCIUV"></div>
       <div id="errorPAI"></div>
       <div id="errorPAIV"></div>
       <div id="errorCPOSTAL"></div>
        <div id="errorCPOSTALV"></div>
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
<div id="bcTarget"> </div>
</div>
 

                        
                    
      <script src="<c:url value="js/jquery-3.1.1.min.js" /> "></script>
      <script src="<c:url value="js/jquery-barcode.js" /> "></script>
      <script src="<c:url value="js/jspdf.min.js" /> "></script>
      <script src="<c:url value="js/jquery.jqprint-0.3.js" /> "></script>
      <script src="<c:url value="js/sweetalert.min.js" /> "></script>
      <script src="<c:url value="js/jquery.md5.js" /> "></script>

      <script>

         function revisarCodigoVacio(elemento) {
            if (elemento.value==""){
                elemento.className='error';
                 document.getElementById('errorCPOSTALV').innerHTML="No escribiste nada en el campo codigo postal";   
            } else {
                elemento.className='form-input';
                document.getElementById('errorCPOSTALV').innerHTML="";
            }
        }
              function revisarcodigopostal(elemento) {
            if (elemento.value!=""){
                var dato = elemento.value;
                   var expresion = /^([0-9])*$/;
                if (!expresion.test(dato)) {
                    elemento.className='error';
                 document.getElementById('errorCPOSTAL').innerHTML="Escribiste letras en el campo codigo postal";
                } else {
                elemento.className='form-input';
               document.getElementById('errorCPOSTAL').innerHTML="";
                }
          }
          }
           function revisarpais(elemento) {
            if (elemento.value!=""){
                var dato = elemento.value;
                var expresion = /^([a-zA-ZÑñáéíóúÉÁÍÓÚ\s])*$/;
                if (!expresion.test(dato)) {
                    elemento.className='error';
                      document.getElementById('errorPAI').innerHTML="Escribiste numeros en el campo pais ";
                             
                } else {
                elemento.className='form-input';
                  document.getElementById('errorPAI').innerHTML="";
                }
           }
         }
                 function revisarPaisVacio(elemento) {
            if (elemento.value==""){
                elemento.className='error';
                 document.getElementById('errorPAIV').innerHTML="No escribiste nada en el campo pais ";  
            } else {
                elemento.className='form-input';
                document.getElementById('errorPAIV').innerHTML="";
            }
        }
                function revisarciudad(elemento) {
            if (elemento.value!=""){
                var dato = elemento.value;
                var expresion = /^([a-zA-ZÑñáéíóúÉÁÍÓÚ\s])*$/;
                if (!expresion.test(dato)) {
                    elemento.className='error';
                      document.getElementById('errorCIU').innerHTML="Escribiste numeros en el campo ciudad ";                
                } else {
                elemento.className='form-input';
                  document.getElementById('errorCIU').innerHTML="";  
                }
           }
         }
                    function revisarCiudadVacia(elemento) {
            if (elemento.value==""){
                elemento.className='error';
                 document.getElementById('errorCIUV').innerHTML="No escribiste nada en el campo ciudad ";  
            } else {
                elemento.className='form-input';
                document.getElementById('errorCIUV').innerHTML="";
            }
        }
               function revisarDelegacionVacia(elemento) {
            if (elemento.value==""){
                elemento.className='error';
                 document.getElementById('errorDELV').innerHTML="No escribiste nada en delegacion ";  
            } else {
                elemento.className='form-input';
                document.getElementById('errorDELV').innerHTML="";
            }
        }
                    function revisardelegacion(elemento) {
            if (elemento.value!=""){
                var dato = elemento.value;
                var expresion = /^([a-zA-ZÑñáéíóúÉÁÍÓÚ\s])*$/;
                if (!expresion.test(dato)) {
                    elemento.className='error';
                     document.getElementById('errorDEL').innerHTML="Escribiste numeros en el campo delegacion";         
                } else {
                elemento.className='form-input';
                 document.getElementById('errorDEL').innerHTML="";
                }
           }
         }

         function revisarcolonia(elemento) {
            if (elemento.value==""){
                elemento.className='error';
                 document.getElementById('errorColo').innerHTML="No escribiste nada en colonia";     
            } else {
                elemento.className='form-input';
                document.getElementById('errorColo').innerHTML=""; 
            }
        }
                function revisardireccion(elemento) {
            if (elemento.value==""){
                elemento.className='error';
                 document.getElementById('errorD').innerHTML="No escribiste nada en calle y numero ";  
            } else {
                elemento.className='form-input';
                document.getElementById('errorD').innerHTML="";
            }
        }
            function revisartelefono(elemento) {
            if (elemento.value!=""){
                var dato = elemento.value;
                   var expresion = /^([0-9])*$/;
                if (!expresion.test(dato)) {
                   elemento.className='error';
                 document.getElementById('errorT').innerHTML="Escribiste letras en el campo numero";
                } else {
                elemento.className='form-input';
                 document.getElementById('errorT').innerHTML="";
                }
          }
          }
              function revisarTelefonoVacio (elemento) {
            if (elemento.value==""){
                elemento.className='error';
                 document.getElementById('errorTV').innerHTML="No escribiste nada en el campo Telefono";
                    
            } else {

                elemento.className='form-input';
                document.getElementById('errorTV').innerHTML="";
            }
        }           
      function revisarPuestoVacio (elemento) {
            if (elemento.value==""){
                elemento.className='error';
                 document.getElementById('errorPV').innerHTML="No escribiste nada en el campo puesto";
                    
            } else {

                elemento.className='form-input';
                document.getElementById('errorPV').innerHTML="";
            }
        } 

            function revisarpuesto(elemento) {
            if (elemento.value!=""){
                var dato = elemento.value;
                var expresion = /^([a-zA-ZÑñáéíóúÉÁÍÓÚ\s])*$/;
                if (!expresion.test(dato)) {
                    elemento.className='error';
                    document.getElementById('errorP').innerHTML="Metiste numeros en el campo puesto ";         
                } else {
                elemento.className='form-input';
                  document.getElementById('errorP').innerHTML=""
                }
           }
         } 

       function revisarempresa(elemento) {
            if (elemento.value==""){
                elemento.className='error';
                    document.getElementById('errorE').innerHTML="Te equivocaste en el campo empresa";
            } else {
                elemento.className='form-input';
                 document.getElementById('errorE').innerHTML=""
            }
        }
            function revisarapellidos(elemento) {
            if (elemento.value!=""){
                var dato = elemento.value;
                var expresion = /^([a-zA-ZÑñáéíóúÉÁÍÓÚ\s])*$/;
                if (!expresion.test(dato)) {
                    elemento.className='error';
                    document.getElementById('errorA').innerHTML="Metiste numeros en el campo apellidos"; 
                } else {
                elemento.className='form-input';
                document.getElementById('errorA').innerHTML=""
                }
           }
         }
                function revisarApellidosVacio (elemento) {
            if (elemento.value==""){
                elemento.className='error';
                 document.getElementById('errorAV').innerHTML="No escribiste nada en el apellido"
                    
            } else {

                elemento.className='form-input';
                document.getElementById('errorAV').innerHTML=""
            }
        }
        function revisaremail(elemento) {
            if (elemento.value!=""){
                var dato = elemento.value;
                var expresion =/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,4})+$/;
                if (!expresion.test(dato)) {
                   elemento.className='error';
                  document.getElementById('errorC').innerHTML="Formato de correo incorrecto"                   
               } else {
                elemento.className='form-input';
                 document.getElementById('errorC').innerHTML=""
                }
                }
        }
  




          function revisarnombre(elemento) {
            if (elemento.value!=""){
                var dato = elemento.value;
                var expresion = /^([a-zA-ZÑñáéíóúÉÁÍÓÚ\s])*$/;
                if (!expresion.test(dato)) {
                    elemento.className='error';
                    document.getElementById('errorN').innerHTML="Metiste numeros en el campo nombre"         
                } else {
                elemento.className='form-input';
                document.getElementById('errorN').innerHTML=""
                }
           }
         }
              function revisarNombreVacio(elemento) {
            if (elemento.value==""){
                elemento.className='error';
                 document.getElementById('errorNV').innerHTML="No escribiste nada en el nombre"
                    
            } else {

                elemento.className='form-input';
                document.getElementById('errorNV').innerHTML=""
            }
        }
          
              
      

       
     
   

         
  
       
     $(document).ready(function(){
     


      $('#login-button').click(function(){
       
        //var expresion3 = /^([a-zA-ZÑñáéíóúÉÁÍÓÚ\s])*$/; 
        //var fuu = $("#nombre").val();
        //var fuu1 = $("#apellidos").val();
        //var expresion = /^([0-9])*$/;
        //var fu = $("#barras").val();
        //if(expresion.test(fu)){
        var correoS=document.getElementById("correo").value;
        var cajaS=document.getElementById("caja").value;
       var valor1=String(correoS);
        var valor6=valor1.toLowerCase();
        var valor2=String(cajaS);
        var valor3=valor6+valor2;
        var valor4=$.md5(valor3);
        var valor5=valor4.substr(0,5);
        $("#bcTarget").barcode( valor5, "code39",{barWidth: 4, barHeight:45});
        //}else{
        
       // }
      });
      
      $('#boton2').click(function(){
          
        var doc = new jsPDF();
        var expresion =/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,4})+$/;
        var expresion2 = /^([0-9])*$/;
        var expresion3 = /^([a-zA-ZÑñáéíóúÉÁÍÓÚ\s])*$/;
        
        var fu1 = $("#nombre").val();
        var fu2 = $("#empresa").val();
        var fu3 = $("#puesto").val();
        var fu4 = $("#telefono").val();
        
        var fu6 = $("#correo").val();
        var fu7 = $("#domicilio").val();
        var fu8 = $("#codigopostal").val();
        var fu9 = $("#apellidos").val();
       var fu10 = $("#colonia").val();
       var fu11 = $("#delegacion").val();
        var fu12 = $("#ciudad").val();
        var fu13 = $("#pais").val();
        if(expresion.test(fu6)&&
        fu1.length>0&&
        fu9.length>0&&
        fu13.length>0&&
        fu2.length>0&&  
        fu3.length>0&&  
        fu7.length>0&&  
        fu12.length>0&& 
        fu4.length>0&& 
        fu8.length>0&& 
        expresion3.test(fu1)&& 
        expresion3.test(fu9)&&
        fu10.length>0&& 
        fu11.length>0&&
        expresion3.test(fu13)){
     //cordenadas a modificar
         doc.addHTML($('#bcTarget')[0], 57, 105, {
          'background': '#fff',
        }, function() {
         if(fu2.length>=27){
         var fuu11=fu2.substring(0,27); 
         doc.setFontSize(17);
         doc.text(65, 91, $('#nombre').val());
         doc.setFontSize(17); 
         doc.text(65, 97, $('#apellidos').val());
         doc.setFontSize(12);
         doc.text(65, 103, fuu11);
        
         var string =doc.output('datauristring');
         var iframe = "<iframe width='100%' height='100%' src='" + string + "'></iframe>"
         var x = window.open();
         x.document.open();
         x.document.write(iframe);
         x.document.close();
        
        document.nombreDelFormulario.method = "post";
         document.nombreDelFormulario.submit();  
     
        }else  { 
         doc.setFontSize(17);
         doc.text(65, 91, $('#nombre').val());
         doc.setFontSize(17); 
         doc.text(65, 97, $('#apellidos').val());
         doc.setFontSize(12);
         doc.text(65, 103, $('#empresa').val());
       
         var string =doc.output('datauristring');
         var iframe = "<iframe width='100%' height='100%' src='" + string + "'></iframe>"
         var x = window.open();
         x.document.open();
         x.document.write(iframe);
         x.document.close();
        
         document.nombreDelFormulario.method = "post";
         document.nombreDelFormulario.submit();
          //doc.output('save');
           
    }
        })
     //if 
        }else{
      sweetAlert("algun campo esta vacio corrobora");
        }
      })
    });
    </script>
   </body>
</html>
