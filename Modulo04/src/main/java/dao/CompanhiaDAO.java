package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import connection.Conexao;
import model.Companhia;

public class CompanhiaDAO {
	Connection conn = null;
	PreparedStatement pstm = null;

	public void save(Companhia com) {

		String sql = "INSERT INTO companhia (cnpj_com,nome_com)" + " VALUE(?,?)";

		try {

			conn = Conexao.createConnectionToMySQL();

			pstm = conn.prepareStatement(sql);

			pstm.setString(1, com.getCnpj());
			pstm.setString(2, com.getNome());

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

		String sql = "DELETE FROM companhia WHERE id_com=?";

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
	
	public void update(Companhia com) {

		String sql = "update companhia set nome_com = ?, cnpj_com = ? where id_com = ?";
		
		try {
			
			conn = Conexao.createConnectionToMySQL();
			
			pstm = conn.prepareStatement(sql);

			pstm.setString(1, com.getNome());
			pstm.setString(2, com.getCnpj());
			pstm.setInt(3, com.getId());

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

	public List<Companhia> getCompanhias() {

		String sql = "SELECT * FROM companhia";

		List<Companhia> companhias = new ArrayList<Companhia>();

		ResultSet rset = null;

		try {
			conn = Conexao.createConnectionToMySQL();

			pstm = conn.prepareStatement(sql);

			rset = pstm.executeQuery();

			while (rset.next()) {

				Companhia com = new Companhia();
				
				com.setId(rset.getInt("id_com"));
				com.setCnpj(rset.getString("cnpj_com"));
				com.setNome(rset.getString("nome_com"));

				companhias.add(com);
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
		return companhias;
	}

	public Companhia comById(int id) {

		String sql = "SELECT * FROM companhia WHERE id_com=?";

		ResultSet rset = null;

		Companhia com = new Companhia();

		try {
			conn = Conexao.createConnectionToMySQL();
			pstm = conn.prepareStatement(sql);
			pstm.setInt(1, id);
			rset = pstm.executeQuery();

			rset.next();

			com.setId(rset.getInt("id_com"));
			com.setCnpj(rset.getString("cnpj_com"));
			com.setNome(rset.getString("nome_com"));

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
		return com;
	}
}