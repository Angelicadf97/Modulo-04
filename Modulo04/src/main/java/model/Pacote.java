package model;

public class Pacote {

	private int id;
	private double total;
	private String nome, descricao;
	private Cliente cliente;
	
	public Pacote() {
	}
	
	public Pacote(int id, double total, String nome, String descricao, Cliente cliente) {
		this.id = id;
		this.total = total;
		this.nome = nome;
		this.descricao = descricao;
		this.cliente = cliente;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public double getTotal() {
		return total;
	}
	public void setTotal(double total) {
		this.total = total;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public String getDescricao() {
		return descricao;
	}
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	public Cliente getCliente() {
		return cliente;
	}
	public void setCliente(Cliente cliente) {
		this.cliente = cliente;
	}
	
	
}
