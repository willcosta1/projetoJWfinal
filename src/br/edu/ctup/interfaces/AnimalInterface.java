package br.edu.ctup.interfaces;

import java.util.List;

import br.edu.ctup.model.Animal;

public interface AnimalInterface {
	void salvar(Animal animal);
	void excluir(Integer id);
	Animal alterar(Integer id);
	public List<Animal> listarAnimaisFuncionario();
	public List<Animal> listarAnimaisUsuario();
}
