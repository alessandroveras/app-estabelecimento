package br.edu.infnet.appestabelecimento.model.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.edu.infnet.appestabelecimento.clients.FuncionarioClient;
import br.edu.infnet.appestabelecimento.model.domain.Funcionario;

@Service
public class FuncionarioService {

	@Autowired
	private FuncionarioClient funcionarioClient;

	public List<Funcionario> obterLista(Integer idEstabelecimento) {
		return funcionarioClient.obterLista(idEstabelecimento);
	}

	public void incluir(Funcionario funcionario) {
		funcionarioClient.incluir(funcionario);
	}

}
