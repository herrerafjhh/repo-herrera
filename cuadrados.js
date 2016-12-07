$(document).ready(function(){
	
	
	jQuery('.cuadrado').each(function(){
		jQuery(this).css('height','100px');
		jQuery(this).css('width','100px');
		jQuery(this).css('margin','20px');
		jQuery(this).css('float','left');
		jQuery(this).css('background-color',"LightSkyBlue");
		
		
	});
	
	
	jQuery('.cuadrado').click(function () {
		count=0;
		jQuery('.cuadrado').css('background-color',"LightSkyBlue");
		seleccionado=$(this);
		
		
		jQuery('.cuadrado').each(function(){
			colorea=$(this);
			colorea.text(" ");
			if (count<$(seleccionado).index()) {
				count++;
				colorea.css('background-color',"orange");
				
			}
			
			
			
			
			
		});
		
		$(seleccionado).text(count);
		
			
    	});  
      
	  
	
	
	
	
	
	
});


