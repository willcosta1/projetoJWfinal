package br.edu.ctup.interfaces;
import java.util.List;

import br.edu.ctup.model.Noticia;

public interface NoticiaInterface {
	void salvar(Noticia noticia);
	List<Noticia> listarTodas();
	void excluir(Integer Id);
	Noticia alterar(Integer id);
}
