package model;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

public class Cliente {

	private int id;
	private String cpf, nome, tel, senha, email, ende;
	private Local local;
	private LocalDate nasc;
	
	DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy");
	
	public Cliente() {
	}
	
	public Cliente(int id,String cpf, String nome, String tel, String senha, String email, String ende, Local local,
			String nasc) {
		this.id = id;
		this.cpf = cpf;
		this.nome = nome;
		this.tel = tel;
		this.senha = senha;
		this.email = email;
		this.ende = ende;
		this.local = local;
		this.nasc = LocalDate.parse(nasc, formatter);
	}
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCpf() {
		return cpf;
	}
	public void setCpf(String cpf) {
		this.cpf = cpf;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getSenha() {
		return senha;
	}
	public void setSenha(String senha) {
		this.senha = senha;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getEnde() {
		return ende;
	}
	public void setEnde(String ende) {
		this.ende = ende;
	}
	public Local getLocal() {
		return local;
	}
	public void setLocal(Local local) {
		this.local = local;
	}
	public String getNasc() {
		return formatter.format(nasc);
	}
	public void setNasc(String nasc) {
		this.nasc = LocalDate.parse(nasc, formatter);
	}
	
}
