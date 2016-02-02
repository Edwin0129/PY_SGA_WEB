<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<!DOCTYPE html>
<html lang="es">
<head>
	<sj:head />
	<jsp:include page="../template/header.jsp"></jsp:include>
</head>
<body class="skin-blue">
	
	<div class="wrapper">
      
      <jsp:include page="../template/menucabecera.jsp"></jsp:include>
      <jsp:include page="../template/menuizquierdo.jsp"></jsp:include>

      <!-- Content Wrapper. Contains page content -->
      <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
          <h1>
            Dashboard
            <small>Panel de control</small>
          </h1>
        </section>

        <!-- Main content -->
        <section class="content" id="contenedor">
        	<div class="row">
        		<div class="col-lg-3">
        			<div class="small-box bg-aqua">
        				<div class="inner">
							<h3>
								<s:property value="#session.establecimientoslibres" />
							</h3>
							<br>
						</div>
						<div class="icon">
							<i class="ion-clipboard"></i>
						</div>
						<a href="#" class="small-box-footer">
							VEHICULOS EN RUTA
						</a>
        			</div>
        		</div>
        		<!--<div class="col-lg-3">
        			<div class="small-box bg-green">
        				<div class="inner">
							<h3>
								<s:property value="#session.sociosregistrados" />
							</h3>
							<br>
						</div>
						<div class="icon">
							<i class="ion ion-person-add"></i>
						</div>
						<a href="#" class="small-box-footer">
							Socios registrados
						</a>
        			</div>
        		</div>  -->
        	</div>
        </section><!-- /.content -->
        
      </div><!-- /.content-wrapper -->
    </div><!-- ./wrapper -->
	
	<jsp:include page="../template/footer.jsp"></jsp:include>
</body>
</html>