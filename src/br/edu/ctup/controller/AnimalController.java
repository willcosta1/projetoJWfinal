package br.edu.ctup.controller;

import java.util.List;

import javax.faces.context.FacesContext;

import br.edu.ctup.DAO.AnimalDAO;
import br.edu.ctup.model.Animal;

public class AnimalController {
	private Animal animal;
	AnimalDAO animalDAO = new AnimalDAO();
	public AnimalController(){
		animal = new Animal();
	}

	public Animal getAnimal() {
		return animal;
	}

	public void setAnimal(Animal animal) {
		this.animal = animal;
	}	
	public String salvar()
	{
		AnimalDAO animalDAO = new AnimalDAO();
		animalDAO.salvar(animal);
		animal = new Animal();
		return "sucesso";
	}
	public String excluir()	{
		AnimalDAO animalDAO = new AnimalDAO();
		Integer id = Integer.parseInt((String) FacesContext.getCurrentInstance().getExternalContext().getRequestParameterMap().get("id"));
		animalDAO.excluir(id);		
		return "sucesso";
	}
	public String alterar()
	{
		AnimalDAO animalDAO = new AnimalDAO();
		Integer id = Integer.parseInt((String) FacesContext.getCurrentInstance().getExternalContext().getRequestParameterMap().get("id"));
		animal = animalDAO.alterar(id);
		return "sucesso";
	}
	public List<Animal> getlistarAnimaisUsuario()	{		
		return animalDAO.listarAnimaisUsuario();
	}
	public List<Animal> getlistarAnimaisFuncionario()	{		
		return animalDAO.listarAnimaisFuncionario();
	}
}
