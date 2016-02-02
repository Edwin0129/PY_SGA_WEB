
$(function(){
	cargaCombos();
	
});
	
	$("#despachonuevo").on("click", function(){
		$.ajax({
			type : "post",
			url  : "a_menuregistrardespacho",
			beforeSend : function(response){
				mostrarCargador();
			},
			success : function(response){
				$("#contenedor").html(response);
			},
			error: function(response){
				swal("Error", "Ha ocurrido un error interno. No pudimos procesar su solicitud", "error");
			}
		});
	});
	$("#registrarmatricula").on("click", function(){
		$.ajax({
			type : "post",
			url  : "a_menuregistrarmatricula",
			beforeSend : function(response){
				mostrarCargador();
			},
			success : function(response){
				$("#contenedor").html(response);
			},
			error: function(response){
				swal("Error", "Ha ocurrido un error interno. No pudimos procesar su solicitud", "error");
			}
		});
	});
	
	$("#fichanueva").on("click", function(){
		$.ajax({
			type : "post",
			url  : "a_menuregistrarficha",
			beforeSend : function(response){
				mostrarCargador();
			},
			success : function(response){
				$("#contenedor").html(response);
			},
			error: function(response){
				swal("Error", "Ha ocurrido un error interno. No pudimos procesar su solicitud", "error");
			}
		});
	});
	
	$("#movtransferencia").on("click", function(){
		$.ajax({
			type : "post",
			url  : "a_menutransferencia",
			beforeSend : function(response){
				mostrarCargador();
			},
			success : function(response){
				$("#contenedor").html(response);
			},
			error: function(response){
				swal("Error", "Ha ocurrido un error interno. No pudimos procesar su solicitud", "error");
			}
		});
	});
	
	$("#mantsocios").on("click", function(){
		$.ajax({
			type : "post",
			url  : "a_menumantenimientosocio",
			beforeSend : function(response){
				mostrarCargador();
			},
			success : function(response){
				$("#contenedor").html(response);
			},
			error: function(response){
				swal("Error", "Ha ocurrido un error interno. No pudimos procesar su solicitud", "error");
			}
		});
	});

	$("#mantestablecimientos").on("click", function(){
		$.ajax({
			type : "post",
			url  : "a_menumantenimientoestablecimiento",
			beforeSend : function(response){
				mostrarCargador();
			},
			success : function(response){
				$("#contenedor").html(response);
			},
			error: function(response){
				swal("Error", "Ha ocurrido un error interno. No pudimos procesar su solicitud", "error");
			}
		});
	});
	
	$("#mantfichas").on("click", function(){
		$.ajax({
			type : "post",
			url  : "a_menumantenimientofichas",
			beforeSend : function(response){
				mostrarCargador();
			},
			success : function(response){
				$("#contenedor").html(response);
			},
			error: function(response){
				swal("Error", "Ha ocurrido un error interno. No pudimos procesar su solicitud", "error");
			}
		});
	});
	
	$("#otrosenviarcorreo").on("click", function(){
		$.ajax({
			type : "post",
			url  : "a_menuenviarcorreo",
			beforeSend : function(response){
				mostrarCargador();
			},
			success : function(response){
				$("#contenedor").html(response);
			},
			error: function(response){
				swal("Error", "Ha ocurrido un error interno. No pudimos procesar su solicitud", "error");
			}
		});
	});
	
	$("#otrosreportesocio").on("click", function(){
		$.ajax({
			type : "post",
			url  : "a_menureportemapa",
			beforeSend : function(response){
				mostrarCargador();
			},
			success : function(response){
				$("#contenedor").html(response);
			},
			error: function(response){
				swal("Error", "Ha ocurrido un error interno. No pudimos procesar su solicitud", "error");
			}
		});
	});
	
	$("#perfil").on("click", function(){
		$.ajax({
			type : "post",
			url  : "a_menuactualizarusuario",
			beforeSend : function(response){
				mostrarCargador();
			},
			success : function(response){
				$("#contenedor").html(response);
			},
			error: function(response){
				swal("Error", "Ha ocurrido un error interno. No pudimos procesar su solicitud", "error");
			}
		});
	});
	


function redirigeSocioRegistrado(idsocio){
	
	$.ajax({
		type : "post",
		url  : "a_redirigesocioregistrado",
		data : {idsocio : idsocio},
		beforeSend : function(response){
			mostrarCargador();
		},
		success : function(response){
			$("#contenedor").html(response);
		},
		error: function(response){
			swal("Error", response.responseJSON.mensajeserver, "error");
		}
	});
	
}



function cargaCombos(){
	

	
	if(!localStorage.getItem("ltsDistrito") ||  !localStorage.getItem("ltsNivel") ||  !localStorage.getItem("ltsGrado")){
		$.ajax({
			
			type : "get",
			url  : "a_listadistritos",
			success : function(response){
				localStorage.setItem("ltsDistrito", JSON.stringify(response.ltsDistrito));
				localStorage.setItem("ltsNivel", JSON.stringify(response.ltsNivel));
				localStorage.setItem("ltsGrado", JSON.stringify(response.ltsGrado));
			}
			
		});
	}else{
		console.log("Listas ya cargadas ...");
	}
	
}



function mostrarCargador(){
	
	$("#contenedor").html("<img style='display:block; margin:auto' src = '_lib/sial/img/100.GIF'/>");
}

function beforeSending(){
	
	swal({
		title: "Se estan cargando los datos, porfavor espere.",
		type: "warning",
		text: "<img style='display:block; margin:auto' src = '_lib/sial/img/100.GIF'/>",
		html: true,
		showConfirmButton : false
	});
	
}


