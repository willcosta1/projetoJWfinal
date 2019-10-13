package br.edu.ctup.controller;

import java.util.List;

import javax.faces.context.FacesContext;

import br.edu.ctup.DAO.NoticiaDAO;
import br.edu.ctup.model.Noticia;

public class NoticiaController {
	private Noticia noticia;
	
	public NoticiaController(){
		noticia = new Noticia();
	}
	public Noticia getNoticia() {
		return noticia;
	}

	public void setNoticia(Noticia noticia) {
		this.noticia = noticia;
	}
	
	public String salvar(){
		 NoticiaDAO noticiaDAO = new NoticiaDAO();
		 noticiaDAO.salvar(noticia);
		 noticia = new Noticia();
		 return "sucesso";
	}
	public String excluir()	{
		NoticiaDAO noticiaDAO = new NoticiaDAO();
		Integer id = Integer.parseInt((String) FacesContext.getCurrentInstance().getExternalContext().getRequestParameterMap().get("id"));
		noticiaDAO.excluir(id);		
		return "sucesso";
	}
	public List<Noticia> getlistar(){
		NoticiaDAO noticiaDAO = new NoticiaDAO();
		return noticiaDAO.listarTodas();
	}
	public String alterar()
	{
		NoticiaDAO noticiaDAO = new NoticiaDAO();
		Integer id = Integer.parseInt((String) FacesContext.getCurrentInstance().getExternalContext().getRequestParameterMap().get("id"));
		noticia = noticiaDAO.alterar(id);
		return "sucesso";
	}
}
