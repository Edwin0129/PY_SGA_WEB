<%@ taglib prefix="s" uri="/struts-tags"%>
	<header class="main-header">
        <!-- Logo -->
        <a href="#" class="logo"><b>Admin</b></a>
        <!-- Header Navbar: style can be found in header.less -->
        <nav class="navbar navbar-static-top" role="navigation">
          <!-- Sidebar toggle button-->
          <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
            <span class="sr-only">Toggle navigation</span>
          </a>
          <div class="navbar-custom-menu">
            <ul class="nav navbar-nav">
              <!-- User Account: style can be found in dropdown.less -->
              <li class="dropdown user user-menu">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                <img src="_lib/adminLTE/img/avatar5.png" class="user-image" 
                    	 		alt="User Image" id="fotoAvatarSmall"/>
  
                  <span class="hidden-xs" id="nombreperfilgrande">
                  	<s:property value="#session.usuario.nomusuario" />
                  </span>
                </a>
                <ul class="dropdown-menu">
                  <!-- User image -->
                  <li class="user-header">
              
                    	 <img src="_lib/adminLTE/img/avatar5.png" class="user-image" 
                    	 		alt="User Image" id="fotoAvatarBig"/>
             
                    <p id="nombreperfilpequeño">
                      <s:property value="#session.usuario.nomusuario" />
                      <s:property value="#session.usuario.apeusuario" />
                    </p>
                  </li>
                  <!-- Menu Body -->
                  <li class="user-body">
                    <div class="col-xs-4 text-center">
                      <a href="#">Ultima conexion: </a>
                    </div>
                  </li>
                  <!-- Menu Footer-->
                  <li class="user-footer">
                    <div class="pull-left">
                      <a href="#" id="perfil" class="btn btn-default btn-flat">Perfil</a>
                    </div>
                    <div class="pull-right">
                      <a href="a_logout" class="btn btn-default btn-flat">Salir</a>
                    </div>
                  </li>
                </ul>
              </li>
            </ul>
          </div>
        </nav>
      </header>
      
      