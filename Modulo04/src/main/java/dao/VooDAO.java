package dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import connection.Conexao;
import model.Aeroporto;
import model.Local;
import model.Voo;

public class VooDAO {
	Connection conn = null;
	PreparedStatement pstm = null;
	SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");

	public void save(Voo voo) {

		String sql = "INSERT INTO voo (data_voo, hor_voo, assentos, preco_base, id_aero_part, id_aero_dest)" + " VALUE(?,?,?,?,?,?)";

		try {

			conn = Conexao.createConnectionToMySQL();

			pstm = conn.prepareStatement(sql);

			pstm.setDate(1, new Date(formatter.parse(voo.getData()).getTime()));
			pstm.setString(2, voo.getHorario());
			pstm.setInt(3, voo.getAssentos());
			pstm.setDouble(4, voo.getPrecoBase());			
			pstm.setInt(5, voo.getAeroPartida().getId());	
			pstm.setInt(6, voo.getAeroDestino().getId());

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

		String sql = "DELETE FROM voo WHERE id_voo=?";

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
	
	public void update(Voo voo) {

		String sql = "update voo set data_voo=?, hor_voo=?, assentos=?, preco_base=?, id_aero_part=?, id_aero_dest=? where id_voo = ?";
		
		try {
			
			conn = Conexao.createConnectionToMySQL();
			
			pstm = conn.prepareStatement(sql);

			pstm.setDate(1, new Date(formatter.parse(voo.getData()).getTime()));
			pstm.setString(2, voo.getHorario());
			pstm.setInt(3, voo.getAssentos());
			pstm.setDouble(4, voo.getPrecoBase());			
			pstm.setInt(5, voo.getAeroPartida().getId());	
			pstm.setInt(6, voo.getAeroDestino().getId());
			pstm.setInt(7, voo.getId());

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

	public List<Voo> getVoos() {

		String sql = "SELECT * FROM voo_aero";

		List<Voo> voos = new ArrayList<Voo>();

		ResultSet rset = null;

		try {
			conn = Conexao.createConnectionToMySQL();

			pstm = conn.prepareStatement(sql);

			rset = pstm.executeQuery();

			while (rset.next()) {

				Voo voo = new Voo();
				Aeroporto aeroP = new Aeroporto();
				Aeroporto aeroD = new Aeroporto();
				Local localP = new Local();
				Local localD = new Local();
				
				voo.setId(rset.getInt("id_voo"));
				voo.setData(formatter.format(rset.getDate("data_voo")));
				voo.setHorario(rset.getString("hor_voo"));
				voo.setAssentos(rset.getInt("assentos"));
				voo.setPrecoBase(rset.getDouble("preco_base"));
				
				aeroP.setId(rset.getInt("id_aero_p"));
				aeroP.setNome(rset.getString("nome_aero_p"));
				localP.setId(rset.getInt("id_local_p"));
				localP.setCidade(rset.getString("cidade_p"));
				localP.setUf(rset.getString("uf_p"));
				aeroP.setLocal(localP);
				voo.setAeroPartida(aeroP);
				
				aeroD.setId(rset.getInt("id_aero"));
				aeroD.setNome(rset.getString("nome_aero"));
				localD.setId(rset.getInt("id_local"));
				localD.setCidade(rset.getString("cidade"));
				localD.setUf(rset.getString("uf"));
				aeroD.setLocal(localD);
				voo.setAeroDestino(aeroD);
				
				voos.add(voo);
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
		return voos;
	}

	public Voo vooById(int id) {

		String sql = "SELECT * FROM voo_aero WHERE id_voo=?";

		ResultSet rset = null;

		Voo voo = new Voo();
		Aeroporto aeroP = new Aeroporto();
		Aeroporto aeroD = new Aeroporto();
		Local localP = new Local();
		Local localD = new Local();

		try {
			conn = Conexao.createConnectionToMySQL();
			pstm = conn.prepareStatement(sql);
			pstm.setInt(1, id);
			rset = pstm.executeQuery();

			rset.next();

			voo.setId(rset.getInt("id_voo"));
			voo.setData(formatter.format(rset.getDate("data_voo")));
			voo.setHorario(rset.getString("hor_voo"));
			voo.setAssentos(rset.getInt("assentos"));
			voo.setPrecoBase(rset.getDouble("preco_base"));
			
			aeroP.setId(rset.getInt("id_aero_p"));
			aeroP.setNome(rset.getString("nome_aero_p"));
			localP.setId(rset.getInt("id_local_p"));
			localP.setCidade(rset.getString("cidade_p"));
			localP.setUf(rset.getString("uf_p"));
			aeroP.setLocal(localP);
			voo.setAeroPartida(aeroP);
			
			aeroD.setId(rset.getInt("id_aero"));
			aeroD.setNome(rset.getString("nome_aero"));
			localD.setId(rset.getInt("id_local"));
			localD.setCidade(rset.getString("cidade"));
			localD.setUf(rset.getString("uf"));
			aeroD.setLocal(localD);
			voo.setAeroDestino(aeroD);

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
		return voo;
	}
	
	public Voo buscarUltId() {
		String sql = "SELECT id_voo FROM voo ORDER BY id_voo DESC limit 1";
		
		ResultSet rset = null;

		Voo voo = new Voo();
		try {
			conn = Conexao.createConnectionToMySQL();
			pstm = conn.prepareStatement(sql);
			rset = pstm.executeQuery();

			rset.next();

			voo.setId(rset.getInt("id_voo"));

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
		return voo;
	}
}