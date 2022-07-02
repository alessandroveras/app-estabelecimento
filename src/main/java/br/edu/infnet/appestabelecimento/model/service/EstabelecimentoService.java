package br.edu.infnet.appestabelecimento.model.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import br.edu.infnet.appestabelecimento.clients.EstabelecimentoClient;
import br.edu.infnet.appestabelecimento.model.domain.Estabelecimento;

@Service
public class EstabelecimentoService {

	@Autowired
	private EstabelecimentoClient estabelecimentoClient;

	public void incluir(Estabelecimento estabelecimento) {
		estabelecimentoClient.incluir(estabelecimento);
	}

}
