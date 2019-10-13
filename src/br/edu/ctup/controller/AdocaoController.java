package br.edu.ctup.controller;

import java.util.List;

import javax.faces.context.FacesContext;

import br.edu.ctup.DAO.AdocaoDAO;
import br.edu.ctup.model.Adocao;

public class AdocaoController {
	private Adocao adocao;
	
	public AdocaoController(){
		adocao = new Adocao();
	}

	public Adocao getAdocao() {
		return adocao;
	}

	public void setAdocao(Adocao adocao) {
		this.adocao = adocao;
	}	
	public String salvar()
	{
		AdocaoDAO adocaoDAO = new AdocaoDAO();
		adocaoDAO.salvar(adocao);
		adocao = new Adocao();
		return "sucesso";
	}
	public String excluir()	{
		AdocaoDAO adocaoDAO = new AdocaoDAO();
		Integer id = Integer.parseInt((String) FacesContext.getCurrentInstance().getExternalContext().getRequestParameterMap().get("id"));
		adocaoDAO.excluir(id);		
		return "sucesso";
	}
	public List<Adocao> listarTodos()	{
		AdocaoDAO adocaoDAO = new AdocaoDAO();
		return adocaoDAO.listarTodos();
	}
	public String alterar()
	{
		AdocaoDAO adocaoDAO = new AdocaoDAO();
		Integer id = Integer.parseInt((String) FacesContext.getCurrentInstance().getExternalContext().getRequestParameterMap().get("id"));
		adocao = adocaoDAO.alterar(id);
		return "sucesso";
	}
}
