package br.edu.infnet.appestabelecimento.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.edu.infnet.appestabelecimento.clients.UsuarioClient;
import br.edu.infnet.appestabelecimento.model.domain.Usuario;

@Service
public class UsuarioService {

	@Autowired
	private UsuarioClient usuarioClient;

	public List<Usuario> obterLista() {
		return usuarioClient.obterLista();
	}

	public void excluir(Integer id) {
		usuarioClient.excluir(id);
	}
	
	public Usuario validar(String login, String senha) {
		return usuarioClient.validar(login, senha);
	}

}
