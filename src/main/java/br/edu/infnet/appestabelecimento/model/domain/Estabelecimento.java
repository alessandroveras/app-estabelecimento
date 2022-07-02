package br.edu.infnet.appestabelecimento.model.domain;

public class Estabelecimento {

	private Integer id;
	private String nome;
	private String login;
	private String senha;
	private String cnpj;
	private String endereco;
	private Boolean edtech;
	
	public Estabelecimento() {
		super();
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getLogin() {
		return login;
	}

	public void setLogin(String login) {
		this.login = login;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}

	public String getCnpj() {
		return cnpj;
	}

	public void setCnpj(String cnpj) {
		this.cnpj = cnpj;
	}

	public String getEndereco() {
		return endereco;
	}

	public void setEndereco(String endereco) {
		this.endereco = endereco;
	}

	public Boolean getEdtech() {
		return edtech;
	}

	public void setEdtech(Boolean edtech) {
		this.edtech = edtech;
	}

}
