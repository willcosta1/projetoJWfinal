package br.edu.ctup.interfaces;

import java.util.List;
import br.edu.ctup.model.Funcionario;

public interface FuncionarioInterface {
	void salvar(Funcionario funcionario);
	void excluir(Integer id);
	Funcionario alterar(Integer id);
	List<Funcionario> listarTodos();
	Funcionario autenticar(String rf, String senha);
}
