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
        <a href="#"><b>Administrador</b>MT</a>
      </div><!-- /.login-logo -->
      <div class="login-box-body">
      	
      	<s:if test="hasActionErrors()">
      		<div class="alert alert-danger">
      			<s:actionerror />
      		</div>
      	</s:if>
      	
      	<s:if test="hasActionMessages()">
      		<div class="alert alert-success">
      			<s:actionmessage />
      		</div>
      	</s:if>
      	
        <p class="login-box-msg">Ingrese sus datos para iniciar sesión</p>
        
        <form action="a_login" method="post" autocomplete="off">
          <div class="form-group has-feedback">
            <s:textfield type="text" class="form-control" required="true" pattern="[A-Za-z\u00f1\u00d1]{1,10}"
            			placeholder="Usuario" name="usuario" maxlength="10"/>
            <span class="glyphicon glyphicon-user form-control-feedback"></span>
          </div>
          <div class="form-group has-feedback">
            <s:textfield type="password" class="form-control" required="true"
            			placeholder="Contraseña" name="clave" maxlength="50"/>
            <span class="glyphicon glyphicon-lock form-control-feedback"></span>
          </div>
          <div class="row">
            <div class="col-xs-8">    
              <div class="checkbox icheck">
                
              </div>                        
            </div><!-- /.col -->
            <div class="col-xs-4">
              <button type="submit" class="btn btn-primary btn-block btn-flat">Entrar</button>
            </div><!-- /.col -->
          </div>
        </form>

        
        <a href="a_cambiarpassword">Olvidé mi contraseña</a><br>

      </div><!-- /.login-box-body -->
    </div><!-- /.login-box -->

</body>
</html>