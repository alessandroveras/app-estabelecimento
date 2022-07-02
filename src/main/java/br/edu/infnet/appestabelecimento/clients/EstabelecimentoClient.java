package br.edu.infnet.appestabelecimento.clients;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

import br.edu.infnet.appestabelecimento.model.domain.Estabelecimento;

@FeignClient(url = "localhost:8080/api/estabelecimento", name = "estabelecimentoClient")
public interface EstabelecimentoClient {
	
	@PostMapping(value = "/incluir")
	public void incluir(@RequestBody Estabelecimento estabelecimento);
}
