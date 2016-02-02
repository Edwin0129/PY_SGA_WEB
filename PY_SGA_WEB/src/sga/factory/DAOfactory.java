package sga.factory;

import sga.service.UsuarioService;





public abstract class  DAOfactory {
	
	private static final int MYSQL=1;
	private static final int SQLSERVER=2;
	private static final int ORACLE=3;
	private static final int POSTGREE=4;	

	public abstract UsuarioService getUsuarioService();

	
	
	public static DAOfactory getfactory(int BD){
		switch (BD) {
			case 1:
				return new MySqlDAOFactory();
			default:
				return new MySqlDAOFactory();
		}
	}
}
