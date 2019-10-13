package br.edu.ctup.DAO;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;
import br.edu.ctup.interfaces.NoticiaInterface;
import br.edu.ctup.model.Animal;
import br.edu.ctup.model.Noticia;

public class NoticiaDAO extends DAOgeneric implements NoticiaInterface {
	Noticia noticia = new Noticia(); 
	@Override
	public void salvar(Noticia noticia) {
		EntityManager em = getEntityManager();
		try {
			if (noticia.getIdNoticia() == null) {
				em.getTransaction().begin();
				em.persist(noticia);
				em.getTransaction().commit();
			} else {
				em.getTransaction().begin();
				em.merge(noticia);
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
	public List<Noticia> listarTodas() {
		EntityManager em = getEntityManager();
		Query q;
			q = em.createQuery("select object(noticia) from Noticia noticia");
		return q.getResultList();
	}

	@Override
	public void excluir(Integer Id) {
		EntityManager em = getEntityManager();
		try{
		em.getTransaction().begin();
		Noticia noticia = em.find(Noticia.class, Id);
		em.remove(noticia);
		em.getTransaction().commit();
		}catch(Exception e){
			System.out.println("erroooooooooooo");
			e.printStackTrace();
			em.getTransaction().rollback();
		}
		
	}
	
	@Override
	public Noticia alterar(Integer id) {			
		 EntityManager em = getEntityManager();			
		    if (id != null) {
		      noticia = getEntityManager().find(Noticia.class, id);
		    }		    
		    return noticia;
	}
	
}
