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
import dao.LocalDAO;
import model.Aeroporto;
import model.Hospedagem;
import model.Local;

@WebServlet(urlPatterns = { "/aeroporto", "/aeroporto-save", "/aeroporto-read", "/aeroporto-delet",
		"/aeroporto-update" })
public class AeroportoServelet extends HttpServlet {

	Aeroporto aeroporto = new Aeroporto();

	LocalDAO localDAO = new LocalDAO();
	AeroportoDAO aeroportoDAO = new AeroportoDAO();

	public AeroportoServelet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getServletPath();
		System.out.println(action);
		switch (action) {
		case "/aeroporto":
			read(request, response);
			break;
		case "/aeroporto-save":
			create(request, response);
			break;
		case "/aeroporto-update":
			update(request, response);
			break;
		case "/aeroporto-delet":
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
		Local local = localDAO.localById(Integer.parseInt(request.getParameter("idLocal")));

		aeroporto.setNome(nome);
		aeroporto.setCnpj(cnpj);
		aeroporto.setLocal(local);

		aeroportoDAO.save(aeroporto);
		response.sendRedirect("./aeroporto");
	}

	// READ
	protected void read(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		List<Aeroporto> lista = aeroportoDAO.getAeroportos();
		request.setAttribute("aeroportos", lista);
		
		List<Local> locais = localDAO.getLocais();
		request.setAttribute("locais", locais);

		RequestDispatcher rd = request.getRequestDispatcher("./adm/aeroporto.jsp");
		rd.forward(request, response);
	}

	// DELET
	protected void delet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));

		aeroportoDAO.removeBy(id);
		response.sendRedirect("./aeroporto");
	}

	// UPDATE
	protected void update(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		aeroporto.setId(Integer.parseInt(request.getParameter("idUpdate")));
		aeroporto.setNome(request.getParameter("nameUpdate"));
		aeroporto.setCnpj(request.getParameter("cnpjUpdate"));
		aeroporto.setLocal(localDAO.localById(Integer.parseInt(request.getParameter("idLocalUpdate"))));

		aeroportoDAO.update(aeroporto);
		response.sendRedirect("./aeroporto");
	}

}
