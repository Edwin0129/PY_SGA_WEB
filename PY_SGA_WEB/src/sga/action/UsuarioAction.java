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

import sga.util.Utils;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;


@ParentPackage("PY_SGA_WEB")
public class UsuarioAction extends ActionSupport implements SessionAware, ServletResponseAware {


	private static final long serialVersionUID = 1L;

	
	private HttpServletResponse response;
	
	private Map<String, Object> session = new HashMap<String, Object>();
	
	
	
	@Action(value = "a_redirecciona", 
			results = { @Result(name = SUCCESS, location = Utils.OTROS+"login.jsp"),
						@Result(name = "YALOGUEADO", location = Utils.WEBCONTENT+"dashboard.jsp")})
	public String login() {
		
		if(session.get("usuario")!=null){
			return "YALOGUEADO";
		}
		return SUCCESS;
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
