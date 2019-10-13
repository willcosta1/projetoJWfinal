package br.edu.ctup.controller;

import java.util.List;

import javax.faces.context.FacesContext;

import br.edu.ctup.DAO.UsuarioDAO;
import br.edu.ctup.model.Usuario;

public class UsuarioController {
	private Usuario usuario;
	UsuarioDAO usuarioDAO = new UsuarioDAO();

	public UsuarioController() {
		usuario = new Usuario();
	}

	public Usuario getUsuario() {
		return usuario;
	}

	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}
	public String salvar() {
		UsuarioDAO usuarioDAO = new UsuarioDAO();
		usuarioDAO.salvar(usuario);
		usuario = new Usuario();
		return "sucesso";
	}
	
	public String alterar() {
		UsuarioDAO usuarioDAO = new UsuarioDAO();
		Integer cod = Integer.parseInt((String) FacesContext.getCurrentInstance().getExternalContext().getRequestParameterMap().get("cod"));
		usuario = usuarioDAO.alterar(cod);
		return "sucesso";
	}
	public List<Usuario> getlistarUsuario()	{		
		return usuarioDAO.listarUsuario();
	}
	
	public String excluir()	{
		Integer cod = Integer.parseInt((String) FacesContext.getCurrentInstance().getExternalContext().getRequestParameterMap().get("cod"));
		UsuarioDAO usuarioDAO = new UsuarioDAO();
		usuarioDAO.excluir(cod);
		usuario = new Usuario();
		return "sucesso";
	}
	
}
