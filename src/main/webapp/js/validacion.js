$(document).ready(function() {
	
	$("#btnSubmit").click(function(){
		var nombre = $("#nombre").val();
		var apellido = $("#apellido").val();
		var edad = $("#edad").val();
		
		if (nombre!="" && apellido!="" && edad!=""){
			alert("se ha procesado su petición!");

		}else{
			
			alert("este campo no puede estar vacio!");

		}
		
	});
});