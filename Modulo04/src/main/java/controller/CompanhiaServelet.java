package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.CompanhiaDAO;
import model.Companhia;

@WebServlet(urlPatterns = { "/companhia", "/companhia-save", "/companhia-read", "/companhia-delet",
		"/companhia-update" })
public class CompanhiaServelet extends HttpServlet {

	Companhia companhia = new Companhia();
	CompanhiaDAO companhiaDAO = new CompanhiaDAO();

	public CompanhiaServelet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getServletPath();
		System.out.println(action);
		switch (action) {
		case "/companhia":
			read(request, response);
			break;
		case "/companhia-save":
			create(request, response);
			break;
		case "/companhia-update":
			update(request, response);
			break;
		case "/companhia-delet":
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

		companhia.setNome(nome);
		companhia.setCnpj(cnpj);

		companhiaDAO.save(companhia);
		response.sendRedirect("./companhia");
	}

	// READ
	protected void read(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		List<Companhia> lista = companhiaDAO.getCompanhias();
		request.setAttribute("companhias", lista);
		
		RequestDispatcher rd = request.getRequestDispatcher("./adm/companhia.jsp");
		rd.forward(request, response);
	}

	// DELET
	protected void delet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));

		companhiaDAO.removeBy(id);
		response.sendRedirect("./companhia");
	}

	// UPDATE
	protected void update(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		companhia.setId(Integer.parseInt(request.getParameter("idUpdate")));
		companhia.setNome(request.getParameter("nameUpdate"));
		companhia.setCnpj(request.getParameter("cnpjUpdate"));

		companhiaDAO.update(companhia);
		response.sendRedirect("./companhia");
	}

}
