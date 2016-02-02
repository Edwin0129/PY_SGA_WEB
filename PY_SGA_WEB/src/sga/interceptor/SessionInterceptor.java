package sga.interceptor;

import java.util.Map;

import org.apache.struts2.convention.annotation.ParentPackage;

import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.Interceptor;


@ParentPackage("PY_SGA_WEB")
public class SessionInterceptor implements Interceptor {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String mensajeserver = "";

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void init() {
		System.out.println("Entro al interceptor...");
	}

	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		
		Map<String, Object> session = invocation.getInvocationContext().getSession();
		
		if(session.get("usuario") == null){
			
			return "NOLOGUEADO";
			
		}
		
		return invocation.invoke();
	}
	
	public String getMensajeserver() {
		return mensajeserver;
	}

	public void setMensajeserver(String mensajeserver) {
		this.mensajeserver = mensajeserver;
	}
	
}
