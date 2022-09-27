package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ClienteDAO;
import dao.LocalDAO;
import model.Cliente;
import model.Hospedagem;
import model.Local;

@WebServlet(urlPatterns = { "/cliente", "/cliente-save", "/cliente-read", "/cliente-delet", "/cliente-update", "/cliente-create" })
public class ClienteServelet extends HttpServlet {

	Cliente cliente = new Cliente();

	LocalDAO localDAO = new LocalDAO();
	ClienteDAO clienteDAO = new ClienteDAO();

	public ClienteServelet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getServletPath();
		System.out.println(action);
		switch (action) {
		case "/cliente":
			read(request, response);
			break;
		case "/cliente-create":
			readCreate(request, response);
			break;
		case "/cliente-save":
			create(request, response);
			break;
		case "/cliente-update":
			update(request, response);
			break;
		case "/cliente-delet":
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
		String cpf = request.getParameter("cpf");
		String data = request.getParameter("date");
		String tel = request.getParameter("tel");
		Local local = localDAO.localById(Integer.parseInt(request.getParameter("idLocal")));
		String log = request.getParameter("log");
		String email = request.getParameter("email");
		String senha = request.getParameter("senha");

		cliente.setNome(nome);
		cliente.setCpf(cpf);
		cliente.setNasc(data);
		cliente.setTel(tel);
		cliente.setEnde(log);
		cliente.setEmail(email);
		cliente.setSenha(senha);
		cliente.setLocal(local);

		clienteDAO.save(cliente);
		response.sendRedirect("./login");
	}

	// READ
	protected void read(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		List<Cliente> lista = clienteDAO.getClientes();
		request.setAttribute("clientes", lista);
		
		List<Local> locais = localDAO.getLocais();
		request.setAttribute("locais", locais);

		RequestDispatcher rd = request.getRequestDispatcher("./adm/clientes.jsp");
		rd.forward(request, response);
	}

	protected void readCreate(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		List<Local> locais = localDAO.getLocais();
		request.setAttribute("locais", locais);

		RequestDispatcher rd = request.getRequestDispatcher("./views/cadastro_user.jsp");
		rd.forward(request, response);
		
	}

	// DELET
	protected void delet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int id = Integer.parseInt(request.getParameter("id"));

		clienteDAO.removeBy(id);
		response.sendRedirect("./cliente");
	}

	// UPDATE
	protected void update(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		cliente.setId(Integer.parseInt(request.getParameter("id")));
		cliente.setNome(request.getParameter("name"));
		cliente.setCpf(request.getParameter("cpf"));
		cliente.setNasc(request.getParameter("date"));
		cliente.setTel(request.getParameter("tel"));
		cliente.setEnde(request.getParameter("log"));
		cliente.setEmail(request.getParameter("email"));
		cliente.setSenha(request.getParameter("senha"));
		cliente.setLocal(localDAO.localById(Integer.parseInt(request.getParameter("idLocal"))));
		
		clienteDAO.update(cliente);
		response.sendRedirect("./cliente");
	}

}
