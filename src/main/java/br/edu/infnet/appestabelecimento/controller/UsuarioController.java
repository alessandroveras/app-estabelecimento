package br.edu.infnet.appestabelecimento.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import br.edu.infnet.appestabelecimento.model.domain.Usuario;
import br.edu.infnet.appestabelecimento.model.service.UsuarioService;

@Controller
public class UsuarioController {

	@Autowired
	private UsuarioService usuarioService;

	@GetMapping(value = "/usuario/{id}/excluir")
	public String excluir(@PathVariable Integer id) {
		usuarioService.excluir(id);
		return "redirect:/usuarios";
	}
	
	@PostMapping(value = "/usuario/validar")
	public Usuario validar(String login, String senha) {
		return usuarioService.validar(login, senha);
	}

	@GetMapping(value = "/usuario")
	public String telaCadastro() {
		return "funcionario/cadastro";
	}

	@GetMapping(value = "/usuarios")
	public String telaLista(Model model) {
		model.addAttribute("usuarios", usuarioService.obterLista());
		return "usuario/lista";
	}

}
