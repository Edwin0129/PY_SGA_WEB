package sga.factory;

import sga.dao.UsuarioDAO;
import sga.service.UsuarioService;





public class MySqlDAOFactory extends DAOfactory{

	@Override
	public UsuarioService getUsuarioService() {
		// TODO Auto-generated method stub
		return new UsuarioDAO();
	}



}
