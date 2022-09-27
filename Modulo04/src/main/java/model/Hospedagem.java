package model;

import dao.LocalDAO;

public class Hospedagem {

	private int id;
	private String cnpj, tipo, nome;
	private double precoDia;
	private Local local;
	
	public Hospedagem() {
	}

	public Hospedagem(int id, String cnpj, String tipo, String nome, double precoDia, Local local) {
		this.id = id;
		this.cnpj = cnpj;
		this.tipo = tipo;
		this.nome = nome;
		this.precoDia = precoDia;
		this.local = local;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCnpj() {
		return cnpj;
	}

	public void setCnpj(String cnpj) {
		this.cnpj = cnpj;
	}

	public String getTipo() {
		return tipo;
	}

	public void setTipo(String tipo) {
		this.tipo = tipo;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public double getPrecoDia() {
		return precoDia;
	}

	public void setPrecoDia(double precoDia) {
		this.precoDia = precoDia;
	}

	public Local getLocal() {
		return local;
	}

	public void setLocal(Local local) {
		this.local = local;
	}
	

}
