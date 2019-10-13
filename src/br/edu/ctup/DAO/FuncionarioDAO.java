package br.edu.ctup.DAO;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import br.edu.ctup.interfaces.FuncionarioInterface;
import br.edu.ctup.model.Animal;
import br.edu.ctup.model.Funcionario;
import br.edu.ctup.model.Usuario;

public class FuncionarioDAO extends DAOgeneric implements FuncionarioInterface{
	
	Funcionario funcionario = new Funcionario();

	@Override
	public void salvar(Funcionario funcionario) {
		EntityManager em = getEntityManager();
		try {
			if (funcionario.getCod() == null) {
				em.getTransaction().begin();
				em.persist(funcionario);
				em.getTransaction().commit();
			} else {
				em.getTransaction().begin();
				em.merge(funcionario);
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
		Funcionario funcionario = em.find(Funcionario.class, id);
		em.remove(funcionario);
		em.getTransaction().commit();
		}catch(Exception e){
			System.out.println("erroooooooooooo");
			e.printStackTrace();
			em.getTransaction().rollback();
		}
		
	}

	@Override
	public List<Funcionario> listarTodos() {
		EntityManager em = getEntityManager();
		Query q = em.createQuery("select object(funcionario) from Funcionario as funcionario");
		return q.getResultList();
	}

	@SuppressWarnings("finally")
	@Override
	public Funcionario autenticar(String rf, String senha) {
		EntityManager em = getEntityManager();
		try{
			Query query = em.createQuery("from Funcionario where rf=:rf and senha=:senha");
			query.setParameter("rf", rf);
			query.setParameter("senha", senha);
		funcionario = (Funcionario) query.getSingleResult();
		}
		catch (Exception nre){
			funcionario = null;
			
		}
		finally{
			em.close();
			return funcionario;
		}
	}

	@Override
	public Funcionario alterar(Integer id) {
		EntityManager em = getEntityManager();			
	    if (id != null) {
	      funcionario = getEntityManager().find(Funcionario.class, id);
	    }		    
	    return funcionario;
		
	}

}
