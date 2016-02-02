<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>

	<div class="container-fluid">
		<div class="row">
			<div class="panel panel-primary">
			  	<div class="panel-heading">Perfil de usuario</div>
			  	<div class="panel-body">
			  		<form id="frmPerfil" enctype="multipart/form-data">
			  			<div class="form-group">
			  				<label>Nombre de usuario</label>
			  				<s:textfield cssClass="form-control" readonly="true"
			  							name="usuario.codusuario">
			  				</s:textfield>
			  			</div>
			  			<div class="form-group">
			  				<label>Nombre completo</label>
			  				<s:textfield cssClass="form-control"
			  							name="usuario.nomcompleto">
			  				</s:textfield>
			  			</div>
			  			<div class="form-group">
			  				<label>Correo</label>
			  				<s:textfield cssClass="form-control"
			  							name="usuario.correo">
			  				</s:textfield>
			  			</div>
			  			<div class="form-group">
			  				<label>Foto</label>
			  				<s:file cssClass="form-control"
			  						id= "fotoUsuario">
			  				</s:file>
			  				<br>O suba una foto directamente desde una url<br>
			  				<s:textfield cssClass="form-control"
			  							name="urlfoto">
			  				</s:textfield>
			  			</div>
			  			<button type="button" class="btn btn-block btn-success" 
			  					id="btnGuardarCambiosPerfil">
			  				Guardar cambios
			  			</button>
			  			<input type="hidden" id="hiddenFotoUsuario" name="archivofoto"/>
			  		</form>
			  		
			  		<form id="frmCambiarClave">
			  			<fieldset>
			  				<legend>Cambiar contraseña</legend>
			  				<div class="form-group">
				  				<label>Clave</label>
				  				<s:password cssClass="form-control" name="usuario.clave"></s:password>
				  			</div>
				  			<button type="button" class="btn btn-block btn-success"
				  				id="btnCambiarClave">
				  				Cambiar clave
				  			</button>
			  			</fieldset>
			  		</form>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="${pageContext.request.contextPath}/_lib/mercadocentral/perfil.js"></script>