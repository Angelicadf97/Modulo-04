package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import connection.Conexao;
import model.Local;

public class LocalDAO {
	Connection conn = null;
	PreparedStatement pstm = null;

	public void save(Local local) {

		String sql = "INSERT INTO local (cidade, uf)" + " VALUE(?,?)";

		try {

			conn = Conexao.createConnectionToMySQL();

			pstm = conn.prepareStatement(sql);

			pstm.setString(1, local.getCidade());

			pstm.setString(2, local.getUf());

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

		String sql = "DELETE FROM local WHERE id_local=?";

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
	
	public void update(Local local) {

		String sql = "update local set cidade = ?, uf = ? where id_local = ?";
		
		try {
			
			conn = Conexao.createConnectionToMySQL();

			pstm = conn.prepareStatement(sql);

			pstm.setString(1, local.getCidade());
			pstm.setString(2, local.getUf());
			pstm.setInt(3, local.getId());

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

	public List<Local> getLocais() {

		String sql = "SELECT * FROM local";

		List<Local> locais = new ArrayList<Local>();

		ResultSet rset = null;

		try {
			conn = Conexao.createConnectionToMySQL();

			pstm = conn.prepareStatement(sql);

			rset = pstm.executeQuery();

			while (rset.next()) {

				Local local = new Local();

				local.setCidade(rset.getString("cidade"));

				local.setUf(rset.getString("uf"));

				local.setId(rset.getInt("id_local"));

				locais.add(local);
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
		return locais;
	}

	public List<Local> locaisByUf(String uf) {

		String sql = "SELECT * FROM local WHERE uf=?";

		List<Local> locais = new ArrayList<Local>();

		ResultSet rset = null;

		try {
			conn = Conexao.createConnectionToMySQL();

			pstm = conn.prepareStatement(sql);
			
			pstm.setString(1, uf);

			rset = pstm.executeQuery();

			while (rset.next()) {

				Local local = new Local();

				local.setCidade(rset.getString("cidade"));

				local.setId(rset.getInt("id_local"));

				locais.add(local);
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
		return locais;
	}

	public Local localById(int id) {

		String sql = "SELECT * FROM local WHERE id_local=?";

		ResultSet rset = null;

		Local local = new Local();

		try {
			conn = Conexao.createConnectionToMySQL();
			pstm = conn.prepareStatement(sql);
			pstm.setInt(1, id);
			rset = pstm.executeQuery();

			rset.next();

			local.setCidade(rset.getString("cidade"));

			local.setUf(rset.getString("uf"));

			local.setId(rset.getInt("id_local"));

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
		return local;
	}
	
	public Local getId(String cidade, String uf) {

		String sql = "SELECT * FROM local WHERE cidade=? and uf=?";

		ResultSet rset = null;

		Local local = new Local();

		try {
			conn = Conexao.createConnectionToMySQL();
			pstm = conn.prepareStatement(sql);
			pstm.setString(1, cidade);
			pstm.setString(2, uf);
			rset = pstm.executeQuery();

			rset.next();

			local.setCidade(rset.getString("cidade"));

			local.setUf(rset.getString("uf"));

			local.setId(rset.getInt("id_local"));

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
		return local;
	}
}