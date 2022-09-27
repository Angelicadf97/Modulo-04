package model;

public class Aeroporto {

	private int id;
	private String cnpj, nome;
	private Local local;
	
	public Aeroporto() {
	}
	
	public Aeroporto(int id,String cnpj, String nome, Local local) {
		this.id = id;
		this.cnpj = cnpj;
		this.nome = nome;
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
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public Local getLocal() {
		return local;
	}
	public void setLocal(Local local) {
		this.local = local;
	}
	
	
}
