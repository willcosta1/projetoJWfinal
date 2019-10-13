package br.edu.ctup.DAO;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class DAOgeneric {
	private EntityManagerFactory emf;
	
	public DAOgeneric() {
		emf = Persistence.createEntityManagerFactory("Projetao");
	}
	
	public EntityManager getEntityManager() {
		return emf.createEntityManager();
	}
}
