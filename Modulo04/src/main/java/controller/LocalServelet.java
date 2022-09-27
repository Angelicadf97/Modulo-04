package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.LocalDAO;
import model.Local;

@WebServlet(urlPatterns = { "/local", "/local-save", "/local-read", "/local-delet", "/local-update"})
public class LocalServelet extends HttpServlet {

	Local local = new Local();

	LocalDAO localDAO = new LocalDAO();

	public LocalServelet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getServletPath();
		System.out.println(action);
		switch (action) {
		case "/local":
			read(request, response);
			break;
		case "/local-save":
			create(request, response);
			break;
		case "/local-update":
			update(request, response);
			break;
		case "/local-delet":
			delet(request, response);
			break;

		default:
			response.sendRedirect("/");
			break;
		}

	}

	// READ
	protected void read(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		List<Local> lista = localDAO.getLocais();

		request.setAttribute("locais", lista);

		RequestDispatcher rd = request.getRequestDispatcher("./adm/local.jsp");
		rd.forward(request, response);
	}

	// CREATE
	protected void create(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String cidade = request.getParameter("city");
		String uf = request.getParameter("uf");
		local.setCidade(cidade);
		local.setUf(uf);
		localDAO.save(local);
		response.sendRedirect("local");

	}

	// DELET
	protected void delet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));

		localDAO.removeBy(id);
		response.sendRedirect("local");
	}

	
	// UPDATE
	protected void update(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		local.setId(Integer.parseInt(request.getParameter("idupdate")));
		local.setCidade(request.getParameter("cityupdate"));
		local.setUf(request.getParameter("ufupdate"));
		System.out.println(request.getParameter("id"));
		System.out.println(request.getParameter("cityupdate"));
		System.out.println(request.getParameter("ufupdate"));
		localDAO.update(local);
		response.sendRedirect("local");
	}

}
