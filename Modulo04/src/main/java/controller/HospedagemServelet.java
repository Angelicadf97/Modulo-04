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
import model.Hospedagem;
import model.Local;

@WebServlet(urlPatterns = { "/hospedagem", "/hospedagem-save", "/hospedagem-read", "/hospedagem-delet",
		"/hospedagem-update"})
public class HospedagemServelet extends HttpServlet {

	Hospedagem hospedagem = new Hospedagem();

	LocalDAO localDAO = new LocalDAO();
	HospedagemDAO hospedagemDAO = new HospedagemDAO();

	public HospedagemServelet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getServletPath();
		System.out.println(action);
		switch (action) {
		case "/hospedagem":
			read(request, response);
			break;
		case "/hospedagem-save":
			create(request, response);
			break;
		case "/hospedagem-update":
			update(request, response);
			break;
		case "/hospedagem-delet":
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

		String nome = request.getParameter("name");
		String cnpj = request.getParameter("cnpj");
		String tipo = request.getParameter("type");
		double preco = Double.parseDouble(request.getParameter("price"));
		Local local = localDAO.localById(Integer.parseInt(request.getParameter("idLocal")));

		hospedagem.setNome(nome);
		hospedagem.setCnpj(cnpj);
		hospedagem.setTipo(tipo);
		hospedagem.setPrecoDia(preco);
		hospedagem.setLocal(local);

		hospedagemDAO.save(hospedagem);
		response.sendRedirect("./hospedagem");
	}

	// READ
	protected void read(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		List<Hospedagem> lista = hospedagemDAO.getHospedagens();
		request.setAttribute("hospedagens", lista);
		
		List<Local> locais = localDAO.getLocais();
		request.setAttribute("locais", locais);

		RequestDispatcher rd = request.getRequestDispatcher("./adm/hospedagem.jsp");
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
	protected void update(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		hospedagem.setId(Integer.parseInt(request.getParameter("idUpdate")));
		hospedagem.setNome(request.getParameter("nameUpdate"));
		hospedagem.setCnpj(request.getParameter("cnpjUpdate"));
		hospedagem.setTipo(request.getParameter("typeUpdate"));
		hospedagem.setPrecoDia(Double.parseDouble(request.getParameter("priceUpdate")));
		hospedagem.setLocal(localDAO.localById(Integer.parseInt(request.getParameter("idLocalUpdate"))));

		hospedagemDAO.update(hospedagem);
		response.sendRedirect("./hospedagem");
	}

}
