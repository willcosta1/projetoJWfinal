package br.edu.ctup.DAO;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import br.edu.ctup.interfaces.AnimalInterface;
import br.edu.ctup.model.Animal;

public class AnimalDAO extends DAOgeneric implements AnimalInterface {
	Animal animal = new Animal();
	@Override
	public void salvar(Animal animal) {
		EntityManager em = getEntityManager();
		try {
			if (animal.getIdAnimal() == null) {
				em.getTransaction().begin();
				em.persist(animal);
				em.getTransaction().commit();
			} else {				
				em.getTransaction().begin();
				em.merge(animal);
				em.getTransaction().commit();
			}
		} catch (Exception e) {
			e.getStackTrace();
			em.getTransaction().rollback();
		} finally {
			em.close();

		}
		
	}

	@Override
	public void excluir(Integer id) {
		EntityManager em = getEntityManager();
		try{
		em.getTransaction().begin();
		Animal animal = em.find(Animal.class, id);
		em.remove(animal);
		em.getTransaction().commit();
		}catch(Exception e){
			System.out.println("erroooooooooooo");
			e.printStackTrace();
			em.getTransaction().rollback();
		}		
	}	
	@Override
	public Animal alterar(Integer id) {			
		 EntityManager em = getEntityManager();			
		    if (id != null) {
		      animal = getEntityManager().find(Animal.class, id);
		    }		    
		    return animal;
	}
	@Override
	public List<Animal> listarAnimaisUsuario() {
		EntityManager em = getEntityManager();
		Query q;
			q = em.createQuery("select object(animal) from Animal as animal WHERE status LIKE '%Sim%'");
		return q.getResultList();
	}
	@Override
	public List<Animal> listarAnimaisFuncionario() {
		EntityManager em = getEntityManager();
		Query q;
			q = em.createQuery("select object(animal) from Animal as animal");
		return q.getResultList();
	}

}
