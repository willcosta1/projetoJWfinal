package br.edu.ctup.interfaces;

import java.util.List;

import br.edu.ctup.model.Chamado;

public interface ChamadoInterface 
{
	String salvar(Chamado chamado);
	void excluir(Integer IdChamado);
	List<Chamado> listarChamados();
	Chamado atualizar(Integer id);
}
