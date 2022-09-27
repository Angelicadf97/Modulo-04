package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import connection.Conexao;
import model.Hospedagem;
import model.Local;

public class HospedagemDAO {
	Connection conn = null;
	PreparedStatement pstm = null;

	public void save(Hospedagem hosp) {

		String sql = "INSERT INTO hospedagem (cnpj_hos,tipo_hos,preco_dia,nome_hos,id_local)" + " VALUE(?,?,?,?,?)";

		try {

			conn = Conexao.createConnectionToMySQL();

			pstm = conn.prepareStatement(sql);

			pstm.setString(1, hosp.getCnpj());

			pstm.setString(2, hosp.getTipo());
			
			pstm.setDouble(3, hosp.getPrecoDia());
			
			pstm.setString(4, hosp.getNome());
			
			pstm.setInt(5, hosp.getLocal().getId());

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

		String sql = "DELETE FROM hospedagem WHERE id_hos=?";

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
	
	public void update(Hospedagem hosp) {

		String sql = "update hospedagem set nome_hos = ?, cnpj_hos = ?, tipo_hos = ?, preco_dia = ?, id_local = ? where id_hos = ?";
		
		try {
			
			conn = Conexao.createConnectionToMySQL();
			
			pstm = conn.prepareStatement(sql);

			pstm.setString(1, hosp.getNome());
			pstm.setString(2, hosp.getCnpj());
			pstm.setString(3, hosp.getTipo());
			pstm.setDouble(4, hosp.getPrecoDia());
			pstm.setInt(5, hosp.getLocal().getId());
			pstm.setInt(6, hosp.getId());

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

	public List<Hospedagem> getHospedagens() {

		String sql = "SELECT * FROM hospedagem_local";

		List<Hospedagem> hospedagens = new ArrayList<Hospedagem>();

		ResultSet rset = null;

		try {
			conn = Conexao.createConnectionToMySQL();

			pstm = conn.prepareStatement(sql);

			rset = pstm.executeQuery();

			while (rset.next()) {

				Hospedagem hosp = new Hospedagem();
				Local local = new Local();
				
				hosp.setId(rset.getInt("id_hos"));
				hosp.setCnpj(rset.getString("cnpj_hos"));
				hosp.setNome(rset.getString("nome_hos"));
				hosp.setTipo(rset.getString("tipo_hos"));
				hosp.setPrecoDia(rset.getDouble("preco_dia"));
				
				local.setId(rset.getInt("id_local"));
				local.setCidade(rset.getString("cidade"));
				local.setUf(rset.getString("uf"));
				hosp.setLocal(local);

				hospedagens.add(hosp);
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
		return hospedagens;
	}

	public Hospedagem hospById(int id) {

		String sql = "SELECT * FROM hospedagem_local WHERE id_hos=?";

		ResultSet rset = null;

		Hospedagem hosp = new Hospedagem();
		Local local = new Local();

		try {
			conn = Conexao.createConnectionToMySQL();
			pstm = conn.prepareStatement(sql);
			pstm.setInt(1, id);
			rset = pstm.executeQuery();

			rset.next();

			hosp.setId(rset.getInt("id_hos"));
			hosp.setCnpj(rset.getString("cnpj_hos"));
			hosp.setTipo(rset.getString("tipo_hos"));
			hosp.setPrecoDia(rset.getDouble("preco_dia"));
			hosp.setNome(rset.getString("nome_hos"));
			
			local.setId(rset.getInt("id_local"));
			local.setCidade(rset.getString("cidade"));
			local.setUf(rset.getString("uf"));
			hosp.setLocal(local);

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
		return hosp;
	}
}