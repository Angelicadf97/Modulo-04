package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import connection.Conexao;
import model.Cliente;
import model.Hospedagem;
import model.Local;
import model.Pacote;

public class PacoteDAO {
	Connection conn = null;
	PreparedStatement pstm = null;

	public void save(Pacote pac) {

		String sql = "INSERT INTO pacote (nome_pac, des_pac, total_pac, id_cli)" + " VALUE(?,?,?,?)";

		try {

			conn = Conexao.createConnectionToMySQL();

			pstm = conn.prepareStatement(sql);

			pstm.setString(1, pac.getNome());
			pstm.setString(2, pac.getDescricao());
			pstm.setDouble(3, pac.getTotal());
			pstm.setInt(4, pac.getCliente().getId());

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

		String sql = "DELETE FROM pacote WHERE id_pac=?";

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

	public void update(Pacote pac) {

		String sql = "update pacote set nome_pac = ?, des_pac = ?, total_pac = ?, id_cli = ? where id_pac = ?";

		try {

			conn = Conexao.createConnectionToMySQL();

			pstm = conn.prepareStatement(sql);

			pstm.setString(1, pac.getNome());
			pstm.setString(2, pac.getDescricao());
			pstm.setDouble(3, pac.getTotal());
			pstm.setInt(4, pac.getCliente().getId());
			pstm.setInt(5, pac.getId());

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

	public List<Pacote> getPacotes() {

		String sql = "SELECT * FROM pacote";

		List<Pacote> pacotes = new ArrayList<Pacote>();

		ResultSet rset = null;

		try {
			conn = Conexao.createConnectionToMySQL();

			pstm = conn.prepareStatement(sql);

			rset = pstm.executeQuery();

			while (rset.next()) {

				Pacote pac = new Pacote();
				Cliente cli = new Cliente();

				pac.setId(rset.getInt("id_pac"));
				pac.setNome(rset.getString("nome_pac"));
				pac.setDescricao(rset.getString("des_pac"));
				pac.setTotal(rset.getDouble("total_pac"));
				cli.setId(rset.getInt("id_cli"));
				pac.setCliente(cli);

				pacotes.add(pac);
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
		return pacotes;
	}

	public Pacote pacById(int id) {

		String sql = "SELECT * FROM pacote WHERE id_pac=?";

		ResultSet rset = null;

		Pacote pac = new Pacote();
		Cliente cli = new Cliente();

		try {
			conn = Conexao.createConnectionToMySQL();
			pstm = conn.prepareStatement(sql);
			pstm.setInt(1, id);
			rset = pstm.executeQuery();

			rset.next();

			pac.setId(rset.getInt("id_pac"));
			pac.setNome(rset.getString("nome_pac"));
			pac.setDescricao(rset.getString("des_pac"));
			pac.setTotal(rset.getDouble("total_pac"));
			cli.setId(rset.getInt("id_cli"));
			pac.setCliente(cli);

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
		return pac;
	}
}