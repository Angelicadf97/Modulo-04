package model;

public class Passagem {

	private int id;
	private String cpfPas, classe;
	private double preco;
	private Companhia com;
	private Voo voo;
	private Pacote pacote;
	
	public Passagem() {
	}
	
	public Passagem(int id, String cpfPas, String classe, double preco, Companhia com, Voo voo, Pacote pacote) {
		this.id = id;
		this.cpfPas = cpfPas;
		this.classe = classe;
		this.preco = preco;
		this.com = com;
		this.voo = voo;
		this.pacote = pacote;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCpfPas() {
		return cpfPas;
	}
	public void setCpfPas(String cpfPas) {
		this.cpfPas = cpfPas;
	}
	public String getClasse() {
		return classe;
	}
	public void setClasse(String classe) {
		this.classe = classe;
	}
	public double getPreco() {
		return preco;
	}
	public void setPreco(double preco) {
		this.preco = preco;
	}
	public Companhia getConc() {
		return com;
	}
	public void setConc(Companhia com) {
		this.com = com;
	}
	public Voo getVoo() {
		return voo;
	}
	public void setVoo(Voo voo) {
		this.voo = voo;
	}
	public Pacote getPacote() {
		return pacote;
	}
	public void setPacote(Pacote pacote) {
		this.pacote = pacote;
	}
	
	
}
