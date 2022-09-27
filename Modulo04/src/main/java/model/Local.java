package model;

public class Local {

	private int id;
	private String uf, cidade;
	
	public Local() {
	}
	
	public Local(int id, String uf, String cidade) {
		this.id = id;
		this.uf = uf;
		this.cidade = cidade;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUf() {
		return uf;
	}
	public void setUf(String uf) {
		this.uf = uf;
	}
	public String getCidade() {
		return cidade;
	}
	public void setCidade(String cidade) {
		this.cidade = cidade;
	}
	
	@Override
	public String toString() {
		return "Local [id=" + id + ", uf=" + uf + ", cidade=" + cidade + "]";
	}
	
}
