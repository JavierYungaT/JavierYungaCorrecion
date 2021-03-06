package ec.edu.ups.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ec.edu.ups.dao.ClienteDAO;
import ec.edu.ups.dao.DAOFactory;
import ec.edu.ups.modelo.Cliente;

/**
 * Servlet implementation class CrearUsuario
 */
@WebServlet("/CrearUsuario")
public class CrearUsuario extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CrearUsuario() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);

		String cedula = "";
		String nombre = "";
		String direccion = "";
		String telefono = "";

		Cliente cli = new Cliente();

		String accion = request.getParameter("resp");
		ClienteDAO clientedao = DAOFactory.getDAOFactory().getClienteDAO();

		if (accion.equals("Registrarse")) {
			nombre = request.getParameter("nombre");
			cedula = request.getParameter("cedula");
			direccion = request.getParameter("direccion");
			telefono = request.getParameter("telefono");

			cli = new Cliente(cedula, nombre, direccion, telefono);

			System.out.println("Usuario a ser creado: " + cli);

			clientedao.create(cli);
			System.out.println("Usuario creado");

		}
	}

}
