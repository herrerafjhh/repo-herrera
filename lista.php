
<?php 
    $lista = $_POST["lista"];
   
    echo "<ul>";
 
        for ($i=0; $i < strlen($lista); $i++){//recorremos la cadena
            
                if($lista[$i] != ","){//si en la posicion se encuenta una "," 
                    echo "<li>";
                    do{
                        echo $lista[$i];
                        $i++;
                    }while($lista[$i] != "," &&  $i < strlen($lista)); //seguirá imprimiendo valores mientras haya una "," y $i sea menor que la long de la cadena
                    
                    echo "</li>";
                    
                }else{
                    $i++;
                }
                
        }        
                
                
            
            
        
       
  
    echo "</ul>";
    
    
    
?> 
        