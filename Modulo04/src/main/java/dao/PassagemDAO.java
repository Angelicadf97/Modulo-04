package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import connection.Conexao;
import model.Companhia;
import model.Hospedagem;
import model.Local;
import model.Pacote;
import model.Passagem;
import model.Voo;

public class PassagemDAO {
	Connection conn = null;
	PreparedStatement pstm = null;

	public void save(Passagem pas) {

		String sql = "INSERT INTO passagem (cpf_passageiro, classe, preco_pass, id_voo, id_com)" + " VALUE(?,?,?,?,?)";
		
		try {

			conn = Conexao.createConnectionToMySQL();

			pstm = conn.prepareStatement(sql);

			pstm.setString(1, pas.getCpfPas());
			pstm.setString(2, pas.getClasse());
			pstm.setDouble(3, pas.getPreco());
			pstm.setInt(4, pas.getVoo().getId());
			pstm.setInt(5, pas.getConc().getId());

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

		String sql = "DELETE FROM passagem WHERE id_pass=?";

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
	
	public void update(Passagem pas) {

		String sql = "update passagem set cpf_passageiro=?, classe=?, preco_pas=?, id_voo=?, id_pac=?, id_com=? where id_pass = ?";
		
		try {
			
			conn = Conexao.createConnectionToMySQL();
			
			pstm = conn.prepareStatement(sql);

			pstm.setString(1, pas.getCpfPas());
			pstm.setString(2, pas.getClasse());
			pstm.setDouble(3, pas.getPreco());
			pstm.setInt(4, pas.getVoo().getId());
			pstm.setInt(5, pas.getPacote().getId());
			pstm.setInt(6, pas.getConc().getId());
			pstm.setInt(7, pas.getId());
			

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

	public List<Passagem> getPassagems() {

		String sql = "SELECT * FROM passagem";

		List<Passagem> passagens = new ArrayList<Passagem>();

		ResultSet rset = null;

		try {
			conn = Conexao.createConnectionToMySQL();

			pstm = conn.prepareStatement(sql);

			rset = pstm.executeQuery();

			while (rset.next()) {

				Passagem pas = new Passagem();
				Voo voo = new Voo();
				Pacote pac = new Pacote();
				Companhia com = new Companhia();
				
				pas.setId(rset.getInt("id_pass"));
				pas.setCpfPas(rset.getString("cpf_passageiro"));
				pas.setClasse(rset.getString("classe"));
				pas.setPreco(rset.getDouble("preco_pass"));
				
				voo.setId(rset.getInt("id_voo"));
				pac.setId(rset.getInt("id_pac"));
				com.setId(rset.getInt("id_com"));
				
				pas.setVoo(voo);
				pas.setPacote(pac);
				pas.setConc(com);

				passagens.add(pas);
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
		return passagens;
	}

	public Passagem passById(int id) {

		String sql = "SELECT * FROM passagem WHERE id_pass=?";

		ResultSet rset = null;

		Passagem pas = new Passagem();
		Voo voo = new Voo();
		Pacote pac = new Pacote();
		Companhia com = new Companhia();

		try {
			conn = Conexao.createConnectionToMySQL();
			pstm = conn.prepareStatement(sql);
			pstm.setInt(1, id);
			rset = pstm.executeQuery();

			rset.next();

			pas.setId(rset.getInt("id_pass"));
			pas.setCpfPas(rset.getString("cpf_passageiro"));
			pas.setClasse(rset.getString("classe"));
			pas.setPreco(rset.getDouble("preco_pass"));
			
			voo.setId(rset.getInt("id_voo"));
			pac.setId(rset.getInt("id_pac"));
			com.setId(rset.getInt("id_com"));
			
			pas.setVoo(voo);
			pas.setPacote(pac);
			pas.setConc(com);

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
		return pas;
	}
}