package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Aeroporto;
import model.Local;

@WebServlet(urlPatterns = {"/index", "/voos", "/hospedagens", "/ofertas", "/oferta-hos", "/oferta_pac", "/contato", "/login"})
public class viewsServelet extends HttpServlet {

	public viewsServelet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getServletPath();
		System.out.println(action);
		switch (action) {
		case "/index":
			index(request, response);
			break;
		case "/voos":
			voos(request, response);
			break;
		case "/hospedagens":
			hospedagens(request, response);
			break;
		case "/ofertas":
			ofertas(request, response);
			break;
		case "/oferta_hos":
			ofertaHos(request, response);
			break;
		case "/oferta_pac":
			ofertaPac(request, response);
			break;
		case "/contato":
			contato(request, response);
			break;
		case "/login":
			login(request, response);
			break;

		default:
			break;
		}
	}

	protected void index(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		RequestDispatcher rd = request.getRequestDispatcher("./index.jsp");
		rd.forward(request, response);
	}
	protected void voos(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		RequestDispatcher rd = request.getRequestDispatcher("./views/voos.jsp");
		rd.forward(request, response);
	}
	protected void hospedagens(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		RequestDispatcher rd = request.getRequestDispatcher("./views/hospedagens.jsp");
		rd.forward(request, response);
	}
	protected void ofertas(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		RequestDispatcher rd = request.getRequestDispatcher("./views/ofertas.jsp");
		rd.forward(request, response);
	}
	protected void ofertaHos(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		RequestDispatcher rd = request.getRequestDispatcher("./views/oferta_hos.jsp");
		rd.forward(request, response);
	}
	protected void ofertaPac(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		RequestDispatcher rd = request.getRequestDispatcher("./views/oferta_pac.jsp");
		rd.forward(request, response);
	}
	protected void contato(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		RequestDispatcher rd = request.getRequestDispatcher("./views/contato.jsp");
		rd.forward(request, response);
	}
	protected void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		RequestDispatcher rd = request.getRequestDispatcher("./views/login.jsp");
		rd.forward(request, response);
	}
}
