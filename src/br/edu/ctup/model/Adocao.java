package br.edu.ctup.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table (name="Adocao")
public class Adocao 
{
	@Id
	@GeneratedValue (strategy=GenerationType.SEQUENCE)
	private Integer IdAdocao;
	
	@Column
	private Date data;
	@OneToOne
	@JoinColumn(name="Animal")
	private Animal animal;
	@OneToOne
	@JoinColumn(name="Usuario")
	private Usuario usuario;

	public Integer getIdAdocao() {
		return IdAdocao;
	}

	public void setIdAdocao(Integer idAdocao) {
		IdAdocao = idAdocao;
	}

	public Date getData() {
		return data;
	}

	public void setData(Date data) {
		this.data = data;
	}

	public Animal getAnimal() {
		return animal;
	}

	public void setAnimal(Animal animal) {
		this.animal = animal;
	}

	public Usuario getUsuario() {
		return usuario;
	}

	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}

}
