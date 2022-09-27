package dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import connection.Conexao;
import model.Cliente;
import model.Hospedagem;
import model.Local;
import model.Pacote;
import model.Reserva;

public class ReservaDAO {
	Connection conn = null;
	PreparedStatement pstm = null;
	SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");

	public void save(Reserva res) {

		String sql = "INSERT INTO reserva (quartos, hospedes, data_saida, data_entrada, sub_total, id_pac, id_hos)" + " VALUE(?,?,?,?,?,?,?)";

		try {

			conn = Conexao.createConnectionToMySQL();

			pstm = conn.prepareStatement(sql);
			
			pstm.setInt(1, res.getQuartos());
			pstm.setInt(2, res.getHospedes());
			pstm.setDate(3, new Date(formatter.parse(res.getEntrada()).getTime()));
			pstm.setDate(4, new Date(formatter.parse(res.getSaida()).getTime()));
			pstm.setDouble(5, res.getSubTotal());
			pstm.setInt(6, res.getPacote().getId());
			pstm.setInt(7, res.getHospedagem().getId());

			pstm.execute();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {

			try {
				if (pstm != null) {

					pstm.close();
				}

				if (conn != null) {
					conn.close();
				}

			} catch (Exception e) {

				e.printStackTrace();
			}
		}
	}

	public void removeBy(int id) {

		String sql = "DELETE FROM reserva WHERE id_res=?";

		try {
			conn = Conexao.createConnectionToMySQL();
			pstm = conn.prepareStatement(sql);

			pstm.setInt(1, id);

			pstm.execute();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (pstm != null) {

					pstm.close();
				}

				if (conn != null) {
					conn.close();
				}

			} catch (Exception e) {

				e.printStackTrace();
			}
		}
	}
	
	public void update(Reserva res) {

		String sql = "update reserva set quartos = ?, hospedes = ?, data_saida = ?, data_entrada = ?, sub_total = ?, id_pac = ?, id_hos = ? where id_res = ?";
		
		try {
			
			conn = Conexao.createConnectionToMySQL();
			
			pstm = conn.prepareStatement(sql);

			pstm.setInt(1, res.getQuartos());
			pstm.setInt(2, res.getHospedes());
			pstm.setDate(3, new Date(formatter.parse(res.getEntrada()).getTime()));
			pstm.setDate(4, new Date(formatter.parse(res.getSaida()).getTime()));
			pstm.setDouble(5, res.getSubTotal());
			pstm.setInt(6, res.getPacote().getId());
			pstm.setInt(7, res.getHospedagem().getId());
			pstm.setInt(8,  res.getId());

			pstm.execute();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (pstm != null) {

					pstm.close();
				}

				if (conn != null) {
					conn.close();
				}

			} catch (Exception e) {

				e.printStackTrace();
			}
		}

	}

	public List<Reserva> getReservas() {

		String sql = "SELECT * FROM reserva_hospedagem_pacote";

		List<Reserva> reservas = new ArrayList<Reserva>();

		ResultSet rset = null;

		try {
			conn = Conexao.createConnectionToMySQL();

			pstm = conn.prepareStatement(sql);

			rset = pstm.executeQuery();

			while (rset.next()) {

				Reserva res = new Reserva();
				Pacote pac = new Pacote();
				Hospedagem hosp = new Hospedagem();
				Local local = new Local();
				Cliente cliente = new Cliente();
				
				res.setId(rset.getInt("id_res"));
				res.setQuartos(rset.getInt("quartos"));
				res.setHospedes(rset.getInt("hospedes"));
				res.setEntrada(formatter.format(rset.getDate("data_entrada")));
				res.setSaida(formatter.format(rset.getDate("data_saida")));
				res.setSubTotal(rset.getDouble("sub_total"));
				
				hosp.setNome(rset.getString("nome_hos"));
				local.setCidade(rset.getString("cidade"));
				local.setUf(rset.getString("uf"));
				hosp.setLocal(local);
				res.setHospedagem(hosp);
				
				pac.setId(rset.getInt("id_pac"));
				cliente.setNome(rset.getString("nome_cli"));
				pac.setCliente(cliente);
				res.setPacote(pac);

				reservas.add(res);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rset != null) {
					rset.close();
				}
				if (pstm != null) {
					pstm.close();
				}
				if (conn != null) {
					conn.close();
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return reservas;
	}

	public Reserva resById(int id) {

		String sql = "SELECT * FROM reserva WHERE id_res=?";

		ResultSet rset = null;

		Reserva res = new Reserva();
		Pacote pac = new Pacote();
		Hospedagem hosp = new Hospedagem();
		Local local = new Local();
		Cliente cliente = new Cliente();

		try {
			conn = Conexao.createConnectionToMySQL();
			pstm = conn.prepareStatement(sql);
			pstm.setInt(1, id);
			rset = pstm.executeQuery();

			rset.next();

			res.setId(rset.getInt("id_res"));
			res.setQuartos(rset.getInt("quartos"));
			res.setHospedes(rset.getInt("hospedes"));
			res.setEntrada(formatter.format(rset.getDate("data_entrada")));
			res.setSaida(formatter.format(rset.getDate("data_saida")));
			res.setSubTotal(rset.getDouble("sub_total"));
			
			hosp.setNome(rset.getString("nome_hos"));
			local.setCidade(rset.getString("cidade"));
			local.setUf(rset.getString("uf"));
			hosp.setLocal(local);
			res.setHospedagem(hosp);
			
			pac.setId(rset.getInt("id_pac"));
			cliente.setNome(rset.getString("nome_cli"));
			pac.setCliente(cliente);
			res.setPacote(pac);

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rset != null) {
					rset.close();
				}
				if (pstm != null) {
					pstm.close();
				}
				if (conn != null) {
					conn.close();
				}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return res;
	}
}