package br.edu.ctup.controller;

import java.util.List;

import javax.faces.context.FacesContext;

import br.edu.ctup.DAO.FuncionarioDAO;
import br.edu.ctup.model.Funcionario;

public class FuncionarioController {
	private Funcionario funcionario;
	
	public FuncionarioController(){
		funcionario = new Funcionario();
	}

	public Funcionario getFuncionario() {
		return funcionario;
	}

	public void setFuncionario(Funcionario funcionario) {
		this.funcionario = funcionario;
	}
	public String salvar()	{
		FuncionarioDAO funcionarioDAO = new FuncionarioDAO(); 
		funcionarioDAO.salvar(funcionario);
		funcionario = new Funcionario();
		return "sucesso";		
	}
	public String excluir()	{
		FuncionarioDAO funcionarioDAO = new FuncionarioDAO();
		Integer id = Integer.parseInt((String) FacesContext.getCurrentInstance().getExternalContext().getRequestParameterMap().get("id"));
		funcionarioDAO.excluir(id);		
		return "sucesso";
	}
	public List<Funcionario> getListarTodos()
	{
		FuncionarioDAO funcionarioDAO = new FuncionarioDAO();
		return funcionarioDAO.listarTodos();
	}
	public String autenticar(){
		return null;
	}
	
	public String alterar() {
		FuncionarioDAO funcionarioDAO = new FuncionarioDAO();
		Integer id = Integer.parseInt((String) FacesContext.getCurrentInstance().getExternalContext().getRequestParameterMap().get("id"));
		funcionario = funcionarioDAO.alterar(id);
		return "sucesso";
	}
}
