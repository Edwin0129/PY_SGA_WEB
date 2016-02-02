package sga.service;

import sga.beans.Usuario;
import sga.factory.DAOfactory;

public class UsuarioServiceImple implements UsuarioService {
	
	DAOfactory factory=DAOfactory.getfactory(1);
	
	UsuarioService dao=factory.getUsuarioService();

	@Override
	public Usuario USPSEGUSUARIO(Usuario objUsuario) {
		// TODO Auto-generated method stub
		return dao.USPSEGUSUARIO(objUsuario);
	}

}
