package br.edu.infnet.appestabelecimento.clients;

import java.util.List;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import br.edu.infnet.appestabelecimento.model.domain.Funcionario;

@FeignClient(url = "localhost:8080/api/funcionario", name = "funcionarioClient")
public interface FuncionarioClient {
	
	@GetMapping(value = "/{idEstabelecimento}/listar")
	public List<Funcionario> obterLista(Integer idEstabelecimento);
	
	@PostMapping(value = "/incluir")
	public void incluir(Funcionario funcionario);

}
