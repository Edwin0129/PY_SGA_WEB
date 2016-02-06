package sga.beans;

import java.io.Serializable;

public class Usuario implements Serializable {
	
	private String cod_usuario;
	private String nom_usuario;
	private String ind_admin_erp;
	private String ind_admin;
	private String ind_bloqueo;
	private String constrana;
	private String constrasena;
	private String status_registro;
	
	
	
	public String getStatus_registro() {
		return status_registro;
	}
	public void setStatus_registro(String status_registro) {
		this.status_registro = status_registro;
	}
	public String getConstrasena() {
		return constrasena;
	}
	public void setConstrasena(String constrasena) {
		this.constrasena = constrasena;
	}
	public String getCod_usuario() {
		return cod_usuario;
	}
	public void setCod_usuario(String cod_usuario) {
		this.cod_usuario = cod_usuario;
	}
	public String getNom_usuario() {
		return nom_usuario;
	}
	public void setNom_usuario(String nom_usuario) {
		this.nom_usuario = nom_usuario;
	}
	public String getInd_admin_erp() {
		return ind_admin_erp;
	}
	public void setInd_admin_erp(String ind_admin_erp) {
		this.ind_admin_erp = ind_admin_erp;
	}
	public String getInd_admin() {
		return ind_admin;
	}
	public void setInd_admin(String ind_admin) {
		this.ind_admin = ind_admin;
	}
	public String getInd_bloqueo() {
		return ind_bloqueo;
	}
	public void setInd_bloqueo(String ind_bloqueo) {
		this.ind_bloqueo = ind_bloqueo;
	}
	public String getConstrana() {
		return constrana;
	}
	public void setConstrana(String constrana) {
		this.constrana = constrana;
	}
	
	
	
	

}
