<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<!DOCTYPE html>
<html lang="es">
<head>
	<sj:head />
	<jsp:include page="../../template/header.jsp"></jsp:include>
</head>
<body class="login-page">

	<div class="login-box">
	  <div class="login-logo">
        <a href="#"><b>Cambiar clave</b></a>
      </div><!-- /.login-logo -->
      <div class="login-box-body">
      
      	<s:if test="hasActionErrors()">
      		<div class="alert alert-danger">
      			<s:actionerror />
      		</div>
      	</s:if>
      
        <p class="login-box-msg">Ingrese su usuario y su correo al cual se le enviara su nueva contraseña</p>
        
        <form action="a_generanuevaclave" method="post" autocomplete="off">
          <div class="form-group has-feedback">
            <s:textfield type="text" class="form-control" required="true" pattern="[A-Za-z\u00f1\u00d1]{1,10}"
            			placeholder="Usuario" name="usuario" maxlength="10"/>
            <span class="glyphicon glyphicon-user form-control-feedback"></span>
          </div>
          <div class="form-group has-feedback">
            <s:textfield type="email" class="form-control" required="true"
            			placeholder="Correo" name="correo" maxlength="100"/>
            <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
          </div>
          <div class="row">
            <div class="col-xs-4">    
              <div class="checkbox icheck">
                
              </div>                        
            </div><!-- /.col -->
            <div class="col-xs-8">
              <button type="submit" class="btn btn-primary btn-block btn-flat" id="btnCambiarClave" onclick="btnClick(this);">Cambiar contraseña</button>
            </div><!-- /.col -->
          </div>
        </form>
		
        <br />
        
        <a href="a_redirecciona">Regresar a Entrar al sistema</a><br>

      </div><!-- /.login-box-body -->
    </div><!-- /.login-box -->
	<script type="text/javascript">
		function btnClick(btn){
			var btn = $(btn);
			btn.prop("disabled", true);
		}
	</script>
</body>
</html>