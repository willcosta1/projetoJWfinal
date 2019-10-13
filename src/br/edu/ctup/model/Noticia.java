package br.edu.ctup.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
//import javax.persistence.JoinColumn;
//import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table (name="Noticia")
public class Noticia {
	@Id
	@GeneratedValue (strategy=GenerationType.SEQUENCE)
	private Integer IdNoticia;
	@Column
	private String titulo, texto, dataPublicacao;
	
	public Integer getIdNoticia() {
		return IdNoticia;
	}
	public void setIdNoticia(Integer idNoticia) {
		IdNoticia = idNoticia;
	}
	public String getTitulo() {
		return titulo;
	}
	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}
	public String getTexto() {
		return texto;
	}
	public void setTexto(String texto) {
		this.texto = texto;
	}
	public String getDataPublicacao() {
		return dataPublicacao;
	}
	public void setDataPublicacao(String dataPublicacao) {
		this.dataPublicacao = dataPublicacao;
	}
	
}
