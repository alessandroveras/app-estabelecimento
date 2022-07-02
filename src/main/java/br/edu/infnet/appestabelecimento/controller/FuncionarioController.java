package br.edu.infnet.appestabelecimento.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import br.edu.infnet.appestabelecimento.model.domain.Funcionario;
import br.edu.infnet.appestabelecimento.model.service.FuncionarioService;

@Controller
public class FuncionarioController {
	
	@Autowired
	private FuncionarioService funcionarioService;
	
	@GetMapping(value = "/funcionario")
	public String telaCadastro() {
		return "funcionario/cadastro";
	}
	
	@GetMapping(value = "/funcionarios")
	public String telaLista(Model model) {
		return "funcionario/lista";
	}
	
	@GetMapping(value = "/funcionario/{idEstabelecimento}/listar")
	public List<Funcionario> obterLista(@PathVariable Integer idEstabelecimento) {
		return funcionarioService.obterLista(idEstabelecimento);
	}

	@PostMapping(value = "/funcionario/incluir")
	public String incluir(Funcionario funcionario) {
		funcionarioService.incluir(funcionario);
		return "redirect:/funcionario";
	}

}
