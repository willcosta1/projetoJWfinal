package br.edu.ctup.DAO;
import java.util.Date;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import br.edu.ctup.DAO.DAOgeneric;
import br.edu.ctup.interfaces.ChamadoInterface;
import br.edu.ctup.model.Chamado;

public class ChamadoDAO extends DAOgeneric implements ChamadoInterface 
{
	Chamado chamado = new Chamado();
	@Override
	public String salvar(Chamado chamado)
	{
		String retorno = "erro";
		EntityManager em = getEntityManager();
		try 
		{
			if (chamado.getIdChamado() == null) 
			{
				Date date = new Date();
				chamado.setDate(date);
				chamado.setStatus("aberto");
				em.getTransaction().begin();
				em.persist(chamado);
				em.getTransaction().commit();
				retorno = "sucesso";
			} 
			else 
			{
				em.getTransaction().begin();
				em.merge(chamado);
				em.getTransaction().commit();
				System.out.println("erro");
				retorno = "sucesso";
			}
		} 
		catch (Exception e) 
		{
			e.getStackTrace();
			em.getTransaction().rollback();
		} 
		finally 
		{
			em.close();
		}
		return retorno;
	}

	@Override
	public void excluir(Integer IdChamado) 
	{
		EntityManager em = getEntityManager();
		try
		{
			em.getTransaction().begin();
			Chamado chamado = em.find(Chamado.class, IdChamado);
			em.remove(chamado);
			em.getTransaction().commit();
		}
		catch(Exception e)
		{
			System.out.println("Erro ao excluir este chamado.");
			e.printStackTrace();
			em.getTransaction().rollback();
		}
	}

	@Override
	public List<Chamado> listarChamados() 
	{
		EntityManager em = getEntityManager();
		Query q = em.createQuery("select object(chamado) from Chamado chamado");
		return q.getResultList();
	}
	
	@Override
	public Chamado atualizar(Integer id) 
	{				
	    if(id != null) 
	    {
	    	chamado = getEntityManager().find(Chamado.class, id);
	    	chamado.setStatus("fechado");
	    	salvar(chamado);
	    }		    
	    return chamado;
	}
}
