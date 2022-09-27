package model;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.time.temporal.ChronoUnit;

public class Reserva {

	private int id, quartos, hospedes;
	private LocalDate entrada, saida;
	private double subTotal;
	private Pacote pacote;
	private Hospedagem hospedagem;
	private long dias;
	
	DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy");
	
	public Reserva() {
	}
	
	public Reserva(int id, int quartos, int hospedes, String entrada, String saida,
			Pacote pacote, Hospedagem hospedagem) {
		this.id = id;
		this.quartos = quartos;
		this.hospedes = hospedes;
		this.entrada = LocalDate.parse(entrada, formatter);
		this.saida = LocalDate.parse(saida, formatter);
		this.dias = setPeriodo(this.entrada, this.saida);
		this.pacote = pacote;
		this.hospedagem = hospedagem;
		this.subTotal = setValorDiarias(hospedagem.getPrecoDia());
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getQuartos() {
		return quartos;
	}
	public void setQuartos(int quartos) {
		this.quartos = quartos;
	}
	public int getHospedes() {
		return hospedes;
	}
	public void setHospedes(int hospedes) {
		this.hospedes = hospedes;
	}
	public String getEntrada() {
		return formatter.format(entrada);
	}
	public void setEntrada(String entrada) {
		this.entrada = LocalDate.parse(entrada, formatter);
	}
	public String getSaida() {
		return formatter.format(saida);
	}
	public void setSaida(String saida) {
		this.saida = LocalDate.parse(saida, formatter);
	}
	public double getSubTotal() {
		return subTotal;
	}
	public void setSubTotal(double subTotal) {
		this.subTotal = subTotal;
	}
	public double setValorDiarias(double valorDiarias) {
		this.subTotal = valorDiarias * dias;
		return this.subTotal;
	}
	public long getDias() {
		return dias;
	}
	public void setDias(long dias) {
		this.dias = dias;
	}
	public Pacote getPacote() {
		return pacote;
	}
	public void setPacote(Pacote pacote) {
		this.pacote = pacote;
	}
	public Hospedagem getHospedagem() {
		return hospedagem;
	}
	public void setHospedagem(Hospedagem hospedagem) {
		this.hospedagem = hospedagem;
	}
	
	public long setPeriodo(LocalDate entrada, LocalDate saida) {
		this.dias =  ChronoUnit.DAYS.between(this.entrada, this.saida);
		return this.dias;
	}	
	
}
