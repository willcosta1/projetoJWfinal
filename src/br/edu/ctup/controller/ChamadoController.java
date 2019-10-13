package br.edu.ctup.controller;

import java.util.List;

import javax.faces.context.FacesContext;

import br.edu.ctup.DAO.ChamadoDAO;
import br.edu.ctup.model.Chamado;

public class ChamadoController 
{
	private static Chamado chamado;
	
	public ChamadoController()
	{
		chamado = new Chamado();
	}

	public Chamado getChamado() 
	{
		return chamado;
	}

	public void setChamado(Chamado chamado) 
	{
		ChamadoController.chamado = chamado;
	}
	public String salvar()
	{
		ChamadoDAO chamadoDAO = new ChamadoDAO();
		String retorno = chamadoDAO.salvar(chamado);
		chamado = new Chamado();
		return retorno;
	}
	
	public String atualizar()
	{
		ChamadoDAO chamadoDAO = new ChamadoDAO();
		Integer id = Integer.parseInt((String) FacesContext.getCurrentInstance().getExternalContext().getRequestParameterMap().get("id"));
		chamado = chamadoDAO.atualizar(id);
		return "sucesso";
	}
	
	public String excluir()
	{
		ChamadoDAO chamadoDAO = new ChamadoDAO();
		Integer id = Integer.parseInt((String) FacesContext.getCurrentInstance().getExternalContext().getRequestParameterMap().get("id"));
		chamadoDAO.excluir(id);	
		return "sucesso";
	}
	
	public List<Chamado> getListarChamados()
	{
		ChamadoDAO chamadoDAO = new ChamadoDAO();
		return chamadoDAO.listarChamados();
	}
}
