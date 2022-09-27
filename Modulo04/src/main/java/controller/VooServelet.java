package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.AeroportoDAO;
import dao.CompanhiaDAO;
import dao.LocalDAO;
import dao.PassagemDAO;
import dao.VooDAO;
import model.Aeroporto;
import model.Companhia;
import model.Local;
import model.Passagem;
import model.Voo;

@WebServlet(urlPatterns = { "/voo", "/voo-save", "/voo-read", "/voo-delet",
		"/voo-update"})
public class VooServelet extends HttpServlet {

	Voo voo = new Voo();
	Passagem pas = new Passagem();

	LocalDAO localDAO = new LocalDAO();
	VooDAO vooDAO = new VooDAO();
	AeroportoDAO aeroDAO = new AeroportoDAO();
	CompanhiaDAO companhiaDAO = new CompanhiaDAO();
	PassagemDAO pasDAO = new PassagemDAO();

	public VooServelet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getServletPath();
		System.out.println(action);
		switch (action) {
		case "/voo":
			read(request, response);
			break;
		case "/voo-save":
			create(request, response);
			break;
//		case "/voo-update":
//			update(request, response);
//			break;
		case "/voo-delet":
			delet(request, response);
			break;

		default:
			response.sendRedirect("/");
			break;
		}
	}

	// CREATE
	protected void create(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		Aeroporto aeroP = aeroDAO.aeroById(Integer.parseInt(request.getParameter("idAP")));
		Aeroporto aeroD = aeroDAO.aeroById(Integer.parseInt(request.getParameter("idAD")));
		String data = request.getParameter("date");
		String hora = request.getParameter("hora");
		double preco = Double.parseDouble(request.getParameter("price"));
		int assento = Integer.parseInt(request.getParameter("assent"));
		
		voo.setAeroPartida(aeroP);
		voo.setAeroDestino(aeroD);
		voo.setData(data);
		voo.setHorario(hora);
		voo.setPrecoBase(preco);
		voo.setAssentos(assento);

		vooDAO.save(voo);
		
		Voo voop = vooDAO.buscarUltId();
		Companhia com = companhiaDAO.comById(Integer.parseInt(request.getParameter("idCom")));
		
		for(int i=1; i<= assento; i++) {
			
			pas.setCpfPas("disponivel");
			pas.setClasse("economica");
			pas.setPreco(preco);
			pas.setVoo(voop);
			pas.setConc(com);
			
			pasDAO.save(pas);
		}
		
		
		response.sendRedirect("./voo");
	}

	// READ
	protected void read(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		List<Voo> lista = vooDAO.getVoos();
		request.setAttribute("voos", lista);
		
		List<Local> locais = localDAO.getLocais();
		request.setAttribute("locais", locais);
		
		List<Aeroporto> aeroportos = aeroDAO.getAeroportos();
		request.setAttribute("aeroportos" , aeroportos);

		
		List<Companhia> companhias = companhiaDAO.getCompanhias();
		request.setAttribute("companhias" , companhias);
			
		RequestDispatcher rd = request.getRequestDispatcher("./adm/voo.jsp");
		rd.forward(request, response);
	}

	// DELET
	protected void delet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));

		vooDAO.removeBy(id);
		response.sendRedirect("./voo");
	}

	// UPDATE
//	protected void update(HttpServletRequest request, HttpServletResponse response)
//			throws ServletException, IOException {
//
//		hospedagem.setId(Integer.parseInt(request.getParameter("idUpdate")));
//		hospedagem.setNome(request.getParameter("nameUpdate"));
//		hospedagem.setCnpj(request.getParameter("cnpjUpdate"));
//		hospedagem.setTipo(request.getParameter("typeUpdate"));
//		hospedagem.setPrecoDia(Double.parseDouble(request.getParameter("priceUpdate")));
//		hospedagem.setLocal(localDAO.localById(Integer.parseInt(request.getParameter("idLocalUpdate"))));
//
//		hospedagemDAO.update(hospedagem);
//		response.sendRedirect("./voo");
//	}

}
