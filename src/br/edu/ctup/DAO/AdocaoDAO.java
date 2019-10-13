package br.edu.ctup.DAO;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import br.edu.ctup.interfaces.AdocaoInterface;
import br.edu.ctup.model.Adocao;

public class AdocaoDAO extends DAOgeneric implements AdocaoInterface{

	Adocao adocao = new Adocao();
	
	@Override
	public void salvar(Adocao adocao) {
		EntityManager em = getEntityManager();
		try {
			if (adocao.getIdAdocao() == null) {
				adocao.getAnimal().setStatus("adotado");
				em.getTransaction().begin();
				em.persist(adocao);
				em.getTransaction().commit();
			} else {
				em.getTransaction().begin();
				em.merge(adocao);
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
	public List<Adocao> listarTodos() {
		EntityManager em = getEntityManager();
		Query q = em.createQuery("select object(adocao) from Adocao as adocao INNER JOIN animal as animal WHERE status LIKE '%adotado%'");
		return q.getResultList();
		
	}
	
	@Override
	public void excluir(Integer id) {
		EntityManager em = getEntityManager();
		try{
		em.getTransaction().begin();
		Adocao adocao = em.find(Adocao.class, id);
		em.remove(adocao);
		em.getTransaction().commit();
		}catch(Exception e){
			System.out.println("Erro");
			e.printStackTrace();
			em.getTransaction().rollback();
		}		
	}
	
	@Override
	public Adocao alterar(Integer id) {			
		 EntityManager em = getEntityManager();			
		    if (id != null) {
		      adocao = getEntityManager().find(Adocao.class, id);
		    }		    
		    return adocao;
	}

}
