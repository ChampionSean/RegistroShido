function seleccionar_busqueda(){

    var opcion = $("#tipo_busqueda").val();

    var $input_nombre = $("#busqueda input");
    var $select_carrera = $("#carrera");

    switch(opcion){

        case 'Nombre':            
            $input_nombre.css('display', 'inline-block').val("");
            $select_carrera.css('display', 'none');
        break;
        case 'Carrera':
            $input_nombre.css('display', 'none');
            $select_carrera.css('display', 'inline-block');
        break;

    }
    
}

function enviar_formulario(){

    var opcion = $("#tipo_busqueda").val();

    switch(opcion){

        case 'Nombre':
        
            $.post("profesor/buscarAlumnoNombre",
                    $("#busqueda").serialize(),
                    function(data){
                        
                        if (data.toString().trim() === "" ){
                            $("#resultados").html("<h1 class=\"resultado\"> No hay resultados <//h1>");
                        }else{
                            $("#resultados").html(data);
                        }
                        
                    });

        break;

        case 'Carrera':
            $.post("profesor/buscarAlumnoCarrera",
                   $("#busqueda").serialize(),
                   function(data){
                       
                        if (data.toString().trim() === "" ){
                            $("#resultados").html("<h1 class=\"resultado\"> No hay resultados <//h1>");
                        }else{
                            $("#resultados").html(data);
                        }
                   
                   });
        break;
    }
    
}
