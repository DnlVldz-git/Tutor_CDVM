package mx.ulsa.controlador;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Servlet implementation class RolControlador
 */
public class RolControlador extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public RolControlador() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void procesar(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html; charset=UTF-8");

		try (PrintWriter out = response.getWriter()) {

			String action = request.getPathInfo();

			switch (action) {
			case "/registrar":
				this.registrar(request, response);
				break;

			default:
				response.sendRedirect(request.getContextPath() + "/");
			}

		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}

	private void registrar(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String nombre = request.getParameter("nombre");
		String descripcion = request.getParameter("descripcion");

		// Validar campos
		String mensaje = "";

		if (nombre == "" || descripcion == "") {
			mensaje = "Datos introducidos incorrectamente, éstos son: ";
			if (nombre == "") {
				mensaje += ("Nombre | ");
			}
			if (descripcion == "") {
				mensaje += ("Descripción | ");
			}
		} else {
			mensaje = "Datos llenados Correctamente!";
		}

		request.setAttribute("mensaje", mensaje);

		// Guardarlos en la base de datos

		// Regresar a la página

		RequestDispatcher dispatcher = request.getRequestDispatcher("/usuario/rol.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		procesar(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		procesar(request, response);
	}

}
