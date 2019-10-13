package br.edu.ctup.interfaces;

import java.util.List;

import br.edu.ctup.model.Adocao;


public interface AdocaoInterface 
{
	void salvar(Adocao adocao);
	List<Adocao> listarTodos();	
	void excluir(Integer id);
	Adocao alterar(Integer id);

}
