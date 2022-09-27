package model;

import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

public class Voo {

	private int id, assentos;
	private String horario;
	private double precoBase;
	private LocalDate data;
	private Aeroporto aeroPartida, aeroDestino;

	DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd/MM/yyyy");

	public Voo() {
	}

	public Voo(int id, int assentos, String horario, double precoBase, String data, Aeroporto aeroPartida,
			Aeroporto aeroDestino) {
		this.id = id;
		this.assentos = assentos;
		this.horario = horario;
		this.precoBase = precoBase;
		this.data = LocalDate.parse(data, formatter);
		this.aeroPartida = aeroPartida;
		this.aeroDestino = aeroDestino;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getAssentos() {
		return assentos;
	}

	public void setAssentos(int assentos) {
		this.assentos = assentos;
	}

	public String getHorario() {
		return horario;
	}

	public void setHorario(String horario) {
		this.horario = horario;
	}

	public double getPrecoBase() {
		return precoBase;
	}

	public void setPrecoBase(double precoBase) {
		this.precoBase = precoBase;
	}

	public String getData() {
		return formatter.format(data);
	}

	public void setData(String data) {
		this.data = LocalDate.parse(data, formatter);
	}

	public Aeroporto getAeroPartida() {
		return aeroPartida;
	}

	public void setAeroPartida(Aeroporto aeroPartida) {
		this.aeroPartida = aeroPartida;
	}

	public Aeroporto getAeroDestino() {
		return aeroDestino;
	}

	public void setAeroDestino(Aeroporto aeroDestino) {
		this.aeroDestino = aeroDestino;
	}

}
