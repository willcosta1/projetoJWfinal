package br.edu.ctup.DAO;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import br.edu.ctup.model.Animal;
import br.edu.ctup.model.Usuario;
import br.edu.ctup.interfaces.UsuarioInterface;

public class UsuarioDAO extends DAOgeneric implements UsuarioInterface {
	
	Usuario usuario = new Usuario();

	@Override
	public void salvar(Usuario usuario) {
		EntityManager em = getEntityManager();
		try {
			if (usuario.getCod() == null) {
				em.getTransaction().begin();
				em.persist(usuario);
				em.getTransaction().commit();
			} else {
				em.getTransaction().begin();
				em.merge(usuario);
				em.getTransaction().commit();
			}
		} catch (Exception e) {
			e.getStackTrace();
			em.getTransaction().rollback();
		} finally {
			em.close();

		}
	}
		

	@SuppressWarnings("finally")
	@Override
	public Usuario autenticar(String cpf, String senha) {
		EntityManager em = getEntityManager();
		try{
			Query query = em.createQuery("from Usuario where cpf=:cpf and senha= :senha");
			query.setParameter("cpf", cpf);
			query.setParameter("senha", senha);
		usuario = (Usuario) query.getSingleResult();
		}
		catch (Exception nre){
			usuario = null;
			
		}
		finally{
			em.close();
			return usuario;
		}
	}
	
	@Override
	public List<Usuario> listarUsuario() {
		EntityManager em = getEntityManager();
		Query q;
			q = em.createQuery("select object(usuario) from Usuario as usuario");
		return q.getResultList();
	}
	
	@Override
	public Usuario alterar(Integer cod) {			
		 EntityManager em = getEntityManager();	
		    if (cod != null) {
		      usuario = getEntityManager().find(Usuario.class, cod);
		    }		    
		    return usuario;
	}

	@Override
	public void excluir(Integer cod) {
		EntityManager em = getEntityManager();
		try{
		em.getTransaction().begin();
		Usuario usuario = em.find(Usuario.class, cod);
		em.remove(usuario);
		em.getTransaction().commit();
		}catch(Exception e){
			System.out.println("erroooo");
			e.printStackTrace();
			em.getTransaction().rollback();
		}		
	}

}
