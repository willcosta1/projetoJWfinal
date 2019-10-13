package br.edu.ctup.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table (name="Chamado")
public class Chamado 
{
	
	@Id
	@GeneratedValue (strategy=GenerationType.SEQUENCE)
	private Integer IdChamado;
	@Column
	private Date date;
	@Column
	private String tipo, porte, cor, logradouro, numero, 
	cep, bairro, cidade, uf, complemento, status;
	
	public String getStatus() 
	{
		return status;
	}
	public void setStatus(String status) 
	{
		this.status = status;
	}
	public Integer getIdChamado() 
	{
		return IdChamado;
	}
	public void setIdChamado(Integer idChamado) 
	{
		IdChamado = idChamado;
	}
	public Date getDate() 
	{
		return date;
	}
	public void setDate(Date date) 
	{
		this.date = date;
	}
	public String getTipo() 
	{
		return tipo;
	}
	public void setTipo(String tipo) 
	{
		this.tipo = tipo;
	}
	public String getPorte() 
	{
		return porte;
	}
	public void setPorte(String porte) 
	{
		this.porte = porte;
	}
	public String getCor() 
	{
		return cor;
	}
	public void setCor(String cor) 
	{
		this.cor = cor;
	}
	public String getLogradouro() 
	{
		return logradouro;
	}
	public void setLogradouro(String logradouro) 
	{
		this.logradouro = logradouro;
	}
	public String getNumero() 
	{
		return numero;
	}
	public void setNumero(String numero) 
	{
		this.numero = numero;
	}
	public String getCep() 
	{
		return cep;
	}
	public void setCep(String cep) 
	{
		this.cep = cep;
	}
	public String getBairro() 
	{
		return bairro;
	}
	public void setBairro(String bairro) 
	{
		this.bairro = bairro;
	}
	public String getCidade() 
	{
		return cidade;
	}
	public void setCidade(String cidade) 
	{
		this.cidade = cidade;
	}
	public String getUf() 
	{
		return uf;
	}
	public void setUf(String uf) 
	{
		this.uf = uf;
	}
	public String getComplemento() 
	{
		return complemento;
	}
	public void setComplemento(String complemento) 
	{
		this.complemento = complemento;
	}
}
