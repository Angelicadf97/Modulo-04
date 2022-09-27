package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import connection.Conexao;
import model.Aeroporto;
import model.Hospedagem;
import model.Local;

public class AeroportoDAO {
	Connection conn = null;
	PreparedStatement pstm = null;

	public void save(Aeroporto aero) {

		String sql = "INSERT INTO aeroporto (cnpj_aero,nome_aero,id_local)" + " VALUE(?,?,?)";

		try {

			conn = Conexao.createConnectionToMySQL();

			pstm = conn.prepareStatement(sql);

			pstm.setString(1, aero.getCnpj());
			pstm.setString(2, aero.getNome());
			pstm.setInt(3, aero.getLocal().getId());

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

		String sql = "DELETE FROM aeroporto WHERE id_aero=?";

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
	
	public void update(Aeroporto aero) {

		String sql = "update aeroporto set nome_aero = ?, cnpj_aero = ?, id_local = ? where id_aero = ?";
		
		try {
			
			conn = Conexao.createConnectionToMySQL();
			
			pstm = conn.prepareStatement(sql);

			pstm.setString(1, aero.getNome());
			pstm.setString(2, aero.getCnpj());
			pstm.setInt(3, aero.getLocal().getId());
			pstm.setInt(4, aero.getId());

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

	public List<Aeroporto> getAeroportos() {

		String sql = "SELECT * FROM aeroporto_local";

		List<Aeroporto> aeroportos = new ArrayList<Aeroporto>();

		ResultSet rset = null;

		try {
			conn = Conexao.createConnectionToMySQL();

			pstm = conn.prepareStatement(sql);

			rset = pstm.executeQuery();

			while (rset.next()) {

				Aeroporto aero = new Aeroporto();
				Local local = new Local();
				
				aero.setId(rset.getInt("id_aero"));
				aero.setCnpj(rset.getString("cnpj_aero"));
				aero.setNome(rset.getString("nome_aero"));
				
				local.setId(rset.getInt("id_local"));
				local.setCidade(rset.getString("cidade"));
				local.setUf(rset.getString("uf"));
				aero.setLocal(local);

				aeroportos.add(aero);
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
		return aeroportos;
	}

	public Aeroporto aeroById(int id) {

		String sql = "SELECT * FROM aeroporto_local WHERE id_aero=?";

		ResultSet rset = null;

		Aeroporto aero = new Aeroporto();
		Local local = new Local();

		try {
			conn = Conexao.createConnectionToMySQL();
			pstm = conn.prepareStatement(sql);
			pstm.setInt(1, id);
			rset = pstm.executeQuery();

			rset.next();

			aero.setId(rset.getInt("id_aero"));
			aero.setCnpj(rset.getString("cnpj_aero"));
			aero.setNome(rset.getString("nome_aero"));
			
			local.setId(rset.getInt("id_local"));
			local.setCidade(rset.getString("cidade"));
			local.setUf(rset.getString("uf"));
			aero.setLocal(local);

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
		return aero;
	}
}