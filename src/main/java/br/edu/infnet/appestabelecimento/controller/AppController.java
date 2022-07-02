package br.edu.infnet.appestabelecimento.controller;

import org.springframework.web.bind.annotation.GetMapping;

public class AppController {

	@GetMapping(value = "/")
	public String login() {
		return "login";
	}
}
