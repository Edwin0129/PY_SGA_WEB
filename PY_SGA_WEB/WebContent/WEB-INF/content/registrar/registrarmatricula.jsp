<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>

<style>
	div>img{
		width: 100%;
		height: 100%;
	}
	fieldset>img{
		width: 100%;
	}
</style>

	<div class="container-fluid">
		<div class="row">

			
			<div class="panel panel-primary">
			  	<div class="panel-heading">REGISTRO DE MATRICULA</div>
			  	<div class="panel-body">


	
		<div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
		<div class="panel panel-default">
    	<div class="panel-heading" role="tab" id="headingOne">
     	 <h4 class="panel-title">
        <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
          DATOS DEL ALUMNO
      	  </a>
      	</h4>
   		 </div>
	
		   <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
      <div class="panel-body">
			<form  id="frmRegistraalumno" accept-charset="UTF-8" role="form"  >
			
		<div class="row" style="padding-right: 0px; padding-bottom: 5px;">
		<div class="col-md-1">
			 <label>DOCUMENTO</label> 
		</div>
		<div class="col-md-2">
			<div class="input-group">
    			<input type="text" class="form-control input-xs" placeholder="NRO DOCUMENTO"  maxlength="8" name="alumnobean.nrodocumento" id="txtNrodocumentoalumno">
      			<span class="input-group-btn">
      			  <button class="btn btn-default btn-xs" type="button" id="btnNrodocumento"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></button>
      				</span>
   				</div><!-- /input-group -->
		</div>
		<div class="col-md-1">
			 <label>FEC. NAC</label> 
		</div>
		<div class="col-md-2">
		
    	<input type="date" class="form-control input-xs" name="alumnobean.fecnacimiento" id="txtFecnacimiento">
 
		</div>
		
		</div>
 
		<div class="row" style="padding-right: 0px; padding-bottom: 5px;" >
		<div class="col-md-1">
			 <label>NOMBRES</label> 
		</div>
		<div class="col-md-2">
		
    	<input type="text" class="form-control input-xs" name="alumnobean.nombres" id="txtNombresalumno">
 
		</div>
		<div class="col-md-1">
			 <label>APELLIDOS</label> 
		</div>
		<div class="col-md-2">
		
    	<input type="text" class="form-control input-xs" name="alumnobean.apellidos" id="txtApellidosalumno"> 
 
		</div>
		
		</div>
		
			<div class="row" style="padding-right: 0px; padding-bottom: 5px;" >
		<div class="col-md-1">
			 <label>TELEFONO</label> 
		</div>
		<div class="col-md-2">
		
    	<input type="text" class="form-control input-xs " name="alumnobean.telefono" id="txtTelefonoalumno">
 
		</div>
		<div class="col-md-1">
			 <label>DISTRITO</label> 
		</div>
		<div class="col-md-2">
		
			<select id="cboRutas" class="form-control input-xs" name="alumnobean.coddistrito"> 
			<option value="-1">[Seleccione]</option>
			</select>
		
    <!--  	<s:url id="URLListaUbigeo" action="a_listadistritos"></s:url>		
 	
			</select>					
 		<sj:select href="%{URLListaUbigeo}" list="ltsDistrito" id="idubigeo" name="alumnobean.coddistrito"
 			listKey="coddistrito" listValue="nomdistrito" headerKey="-1" headerValue="--DISTRITO--"  cssClass="form-control input-xs" />-->
		</div>
		
		</div>
		
		<div class="row" style="padding-right: 0px; padding-bottom: 5px;" >
		<div class="col-md-1">
			 <label>DIRECCION</label> 
		</div>
		<div class="col-md-5">
		
    	<input type="text" class="form-control input-xs" name="alumnobean.direccion" id="txtDireccionalumno">
 
		</div>
	
		
		</div>
		
	<div class="row" style="padding-right: 0px; padding-bottom: 5px;" >
		<div class="col-md-1">
			 <label>SEXO</label> 
		</div>
		<div class="col-md-2">
		
    	  <select id="cboSexo" class="form-control input-xs" name="alumnobean.sexo">
        <option value="M">MASCULINO</option>
        <option value="F">FEMENINO</option>
    </select>
 
		</div>
	
		
		</div>
		</form>
		<div class="row" style="padding-right: 0px; padding-bottom: 5px;" >
		<div class="col-md-6">
    	<button id="btnAgregaralumno" class="btn-success form-control input-xs" >SIGUIENTE</button>
    	</div>
		</div>
		</div>
		</div>
		</div>
	<div class="panel panel-default">
    <div class="panel-heading" role="tab" id="headingTwo">
      <h4 class="panel-title">
        <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
          DATOS DEL APODERADO 
        </a>
      </h4>
    </div>
    <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
      <div class="panel-body">
    <div class="row" style="padding-right: 0px; padding-bottom: 5px;" >
    <div class="col-md-6">
    <button id="btnAgregardapoderado" class="btn-success form-control input-xs" >AGREGAR NUEVO APODERADO</button>
    </div>
    </div>
		<div class="row" style="padding-right: 0px; padding-bottom: 5px;" >
		<div class="col-md-6">
		 <div class="form-group">
            		<table class="table table-hover" id="tblApoderados">
						<thead>
							<tr>
								<th>CODIGO</th>
								<th>DATOS PERSONALES</th>
								<th>DIRECCION</th>
								<th>TELEFONO</th>
								<th>VER</th>
							</tr>
						</thead>
						<tbody id="tblBodyApoderados">

						</tbody>
					</table>
		</div>
		</div>
		</div>
		
		</div>
		</div>
		</div>
		<div class="panel panel-default">
   		 <div class="panel-heading" role="tab" id="heading3">
    	  <h4 class="panel-title">
        <a class="collapsed" role="button" data-toggle="collapse"  id="activaMatricula" data-parent="#accordion"  aria-expanded="false" aria-controls="collapse3">
          DATOS DE LA MATRICULA
        </a>
     	 </h4>
    	</div>
    <div id="collapse3" class="panel-collapse collapse" role="tabpanel" aria-labelledby="heading3">
      <div class="panel-body">
    
    <form id="frmMatricula">
    <div class="row" style="padding-right: 0px; padding-bottom: 5px;" >
		<div class="col-md-1">
			 <label>FEC. INICIO</label> 
		</div>
		<div class="col-md-2">
		<input type="date" class="form-control input-xs" id="txtFecinicio" />
		
		</div>
		<div class="col-md-1">
			 <label>FEC. FIN</label> 
		</div>
		<div class="col-md-2">
		<input type="date" class="form-control input-xs" id="txtFecfin" />
		
		</div>
		
	</div>
    
		<div class="row" style="padding-right: 0px; padding-bottom: 5px;" >
		<div class="col-md-1">
			 <label>NIVEL</label> 
		</div>
		<div class="col-md-2">
		
		<select id="cboNivel" class="form-control input-xs" name="alumnobean.coddistrito"> 
			<option value="-1">[Seleccione]</option>
			</select>	
		</div>
		
		<div class="col-md-1">
			 <label>GRADO</label> 
		</div>
		<div class="col-md-2">
		
		<select id="cboGrado" class="form-control input-xs" name="alumnobean.coddistrito"> 
			<option value="-1">[Seleccione]</option>
			</select>	
		</div>
		
		</div>
		
		<div class="row" style="padding-right: 0px; padding-bottom: 5px;" >
		<div class="col-md-1">
			 <label>OBSERVACIONES</label> 
		</div>
		<div class="col-md-5">
		<div class="form-group">
    	<textarea class="form-control" rows="4" id="txtObservaciones" >
    	
    	</textarea>
 		</div>
		</div>
		</div>
		</form>
		</div>
		
		</div>
		</div>
		<div class="row" style="padding-right: 0px; padding-bottom: 5px;" >
		</div>
<div class="row" style="padding-right: 0px; padding-bottom: 5px;" >
    <div class="col-md-3">
    <button id="btnLimpiar" class="btn-default form-control input-xs" >LIMPIAR</button>
    </div>
    <div class="col-md-3">
    <button id="btnAgregarmatricula" class="btn-success form-control input-xs" disabled="disabled">AGREGAR MATRICULA</button>
    </div>
    </div>
		
		</div>
	
		
			  	
			  	</div> 
			  	
				</div>
			</div>
		</div>

	<div class="modal fade" tabindex="-1" role="dialog" id="modalApoderados">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title">REGISTRO DE APODERADOS</h4>
      </div>
      <div class="modal-body">
    	<s:form id="frmApoderados">
    	<div class="row" style="padding-right: 0px; padding-bottom: 5px;" >
    	
    	<s:hidden id="txtNrodocumentoalumnohide" name="apoderadobean.nrodocumentoalumno" />
		<div class="col-md-4">
			 <label>NRO DOCUMENTO</label> 
		</div>
		<div class="col-md-6">
		<input type="text" class="form-control input-xs" maxlength="8"  name="apoderadobean.nrodocumento" id="txtNrodocumentoapoderado">
 
		</div>
		</div>
    	
    	<div class="row" style="padding-right: 0px; padding-bottom: 5px;" >
		<div class="col-md-4">
			 <label>NOMBRE</label> 
		</div>
		<div class="col-md-6">
		<input type="text" class="form-control input-xs" name="apoderadobean.nombres">
 
		</div>
		</div>
		
		<div class="row" style="padding-right: 0px; padding-bottom: 5px;" >
		<div class="col-md-4">
			 <label>APELLIDOS</label> 
		</div>
		<div class="col-md-6">
		<input type="text" class="form-control input-xs" name="apoderadobean.apellidos">
 
		</div>
		</div>
    	
    		<div class="row" style="padding-right: 0px; padding-bottom: 5px;" >
		<div class="col-md-4">
			 <label>TELEFONO</label> 
		</div>
		<div class="col-md-6">
		<input type="text" class="form-control input-xs" name="apoderadobean.telefono" >
 
		</div>
		</div>
    	<div class="row" style="padding-right: 0px; padding-bottom: 5px;" >
		<div class="col-md-4">
			 <label>DIRECCION</label> 
		</div>
		<div class="col-md-6">
		<input type="text" class="form-control input-xs" name="apoderadobean.direccion" >
 
		</div>
		</div>
		
		
		<div class="row" style="padding-right: 0px; padding-bottom: 5px;" >
		<div class="col-md-4">
			 <label>CORREO</label> 
		</div>
		<div class="col-md-6">
		<input type="email" class="form-control input-xs" name="apoderadobean.correo">
 
		</div>
		</div>
			<div class="row" style="padding-right: 0px; padding-bottom: 5px;" >
		<div class="col-md-4">
			 <label>ESTADO CIVIL</label> 
		</div>
		<div class="col-md-6">
		 <select id="cboEcivil" class="form-control input-xs" name="apoderadobean.estadocivil" >
        <option value="S">SOLTERO(A)</option>
        <option value="C">CASADO(A)</option>
        <option value="V">VIUDO(A)</option>
        <option value="D">DIVORCIADO(A)</option>
  	  </select>
 
		</div>
		</div>
		
    	</s:form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary" id="btnRegistrarapoderado" >REGISTRAR</button>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
	
	
	<script>
      $(function () {
 	  

       
        $('#tblApoderados').DataTable({
            "paging": true,
            "lengthChange": false,
            "searching": false,
            "ordering": true,
            "info": true,
            "autoWidth": false,
            "oLanguage": {
          	  "sUrl": "_lib/datatable/js/Spanish.json"
          	}
          });
      });
    </script>

<script type="text/javascript" src="_lib/sial/prueba.js"></script>


