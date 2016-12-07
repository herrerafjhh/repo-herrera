window.onload = iniciar;


function iniciar(){
    document.getElementById("enviar").addEventListener('click',comprobar,false);
    
}

function comprobar(){
    usuario=document.getElementById("usuario").value;
    pass=document.getElementById("pass").value;
    
    u= usuario.trim();
    p= pass.trim()
    action=false;
    
    if ((u == "") || (p=="") ){
        alert('Los campos no pueden estar vacíos');
    }else{
        if ( p.length <= 6) {
            alert('El password debe ser  superior a 6 caracteres');
        }else{
            action=confirm("Correcto,¿proceder con el registro?");
        }
        
        
    }
    
    if (action == true) {
      alert("Registrado!");
    }
    
    
}