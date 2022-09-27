package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.HospedagemDAO;
import dao.LocalDAO;
import dao.PacoteDAO;
import dao.ReservaDAO;
import model.Hospedagem;
import model.Local;
import model.Reserva;

@WebServlet(urlPatterns = { "/reserva", "/reserva-save", "/reserva-read", "/reserva-delet",
		"/reserva-update" })
public class ReservaServelet extends HttpServlet {

	Reserva reserva = new Reserva();
	
	ReservaDAO reservaDAO = new ReservaDAO();
	LocalDAO localDAO = new LocalDAO();
	HospedagemDAO hospedagemDAO = new HospedagemDAO();
	PacoteDAO pacoteDAO = new PacoteDAO();

	public ReservaServelet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getServletPath();
		System.out.println(action);
		switch (action) {
		case "/reserva":
			read(request, response);
			break;
		case "/reserva-save":
			create(request, response);
			break;
//		case "/reserva-update":
//			update(request, response);
//			break;
		case "/reserva-delet":
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

		int quartos = Integer.parseInt(request.getParameter("quartos"));
		int hospedes = Integer.parseInt(request.getParameter("hospedes"));
		String entrada = request.getParameter("dataEnt");
		String saida = request.getParameter("dataSaida");
		Hospedagem hospedagem = hospedagemDAO.hospById(Integer.parseInt(request.getParameter("idHos")));
		
		reserva.setQuartos(quartos);
		reserva.setHospedes(hospedes);
		reserva.setEntrada(entrada);
		reserva.setSaida(saida);
		reserva.setHospedagem(hospedagem);

		reservaDAO.save(reserva);
		response.sendRedirect("./reserva");
	}

	// READ
	protected void read(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		List<Hospedagem> lista = hospedagemDAO.getHospedagens();
		request.setAttribute("hospedagens", lista);
		
		List<Local> locais = localDAO.getLocais();
		request.setAttribute("locais", locais);

		RequestDispatcher rd = request.getRequestDispatcher("./adm/reserva.jsp");
		rd.forward(request, response);
	}

	// DELET
	protected void delet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));

		hospedagemDAO.removeBy(id);
		response.sendRedirect("./hospedagem");
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
//		response.sendRedirect("./hospedagem");
//	}

}
