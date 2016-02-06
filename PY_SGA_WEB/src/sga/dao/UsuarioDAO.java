package sga.dao;

import java.io.Reader;

import sga.beans.Usuario;
import sga.service.UsuarioService;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;


public class UsuarioDAO implements UsuarioService {

	SqlSessionFactory sqlmapper=null;{
		try {
			Reader archi=
				Resources.getResourceAsReader("ConfiguracionIbatis.xml");	
			sqlmapper= new SqlSessionFactoryBuilder().build(archi);
		} catch (Exception e) {
			e.printStackTrace();
		}		
	}
	
	@Override
	public Usuario USPSEGUSUARIO(Usuario objUsuario) {
		SqlSession s = sqlmapper.openSession();
		Usuario Usuario = null;
		try {
			Usuario = (Usuario) s.selectOne("usuarioXML.USP_SEG_USUARIO_LOGIN", objUsuario);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			s.close();
		}
		return Usuario;
	}

}
