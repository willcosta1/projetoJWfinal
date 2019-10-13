package br.edu.ctup.interfaces;

import java.util.List;

import br.edu.ctup.model.Usuario;

public interface UsuarioInterface {
	void salvar(Usuario usuario);
	Usuario autenticar(String login, String senha);
	public List<Usuario> listarUsuario();
	Usuario alterar(Integer cod);
	void excluir(Integer id);
}
