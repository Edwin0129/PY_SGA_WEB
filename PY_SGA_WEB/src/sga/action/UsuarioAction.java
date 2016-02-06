package sga.action;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.convention.annotation.ParentPackage;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.apache.struts2.interceptor.SessionAware;
import org.apache.struts2.json.JSONException;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Result;

import sga.beans.Usuario;
import sga.service.UsuarioServiceImple;
import sga.util.Utils;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;


@ParentPackage("PY_SGA_WEB")
public class UsuarioAction extends ActionSupport implements SessionAware, ServletResponseAware {


	private static final long serialVersionUID = 1L;

	
	private HttpServletResponse response;
	
	private Map<String, Object> session = new HashMap<String, Object>();
	
	private UsuarioServiceImple conexionSGA = new UsuarioServiceImple();
	
	
	private String usuario, clave, correo;
	
	
	@Action(value = "a_redirecciona", 
			results = { @Result(name = SUCCESS, location = Utils.OTROS+"login.jsp"),
						@Result(name = "YALOGUEADO", location = Utils.WEBCONTENT+"dashboard.jsp")})
	public String login() {
		
		if(session.get("usuario")!=null){
			return "YALOGUEADO";
		}
		return SUCCESS;
	}
	
	
	@Action(value = "a_login", 
			results = { @Result(name = SUCCESS, location = Utils.WEBCONTENT+"dashboard.jsp"),
						@Result(name = ERROR, location = Utils.OTROS+"login.jsp"),
						@Result(name = "YALOGUEADO", location = Utils.WEBCONTENT+"dashboard.jsp")})
	public String verificaUsuario(){
		
		if(session.get("usuario")!=null){
			return "YALOGUEADO";
		}
		
	if(this.usuario.trim().equals("")){
			addActionError("Por favor, complete el campo usuario");
			return ERROR;
		}
		
		if(clave.trim().equals("")){
			addActionError("Por favor, complete el campo clave");
			return ERROR;
		}
		

		
		Usuario usu = new Usuario();
		usu.setCod_usuario(usuario);
		usu.setConstrasena(clave);
		
		Usuario usuario = conexionSGA.USPSEGUSUARIO(usu);
		

		if(usuario == null){
			addActionError("Usuario no encontrado, porfavor verifique sus datos.");
			return ERROR;
		}
		System.out.println("neil es otaku");
		
		session.put("usuario", usuario);
		
			
		return SUCCESS;
	}
	
	
	public UsuarioServiceImple getConexionSGA() {
		return conexionSGA;
	}


	public void setConexionSGA(UsuarioServiceImple conexionSGA) {
		this.conexionSGA = conexionSGA;
	}


	public String getUsuario() {
		return usuario;
	}


	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}


	public String getClave() {
		return clave;
	}


	public void setClave(String clave) {
		this.clave = clave;
	}


	public String getCorreo() {
		return correo;
	}


	public void setCorreo(String correo) {
		this.correo = correo;
	}


	@Override
	public void setServletResponse(HttpServletResponse response) {
		this.response = response;
		
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
		
	}
	
	

}
