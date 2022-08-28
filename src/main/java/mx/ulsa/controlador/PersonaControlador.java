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
 * Servlet implementation class PersonaControlador
 */
public class PersonaControlador extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public PersonaControlador() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void procesar(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html; charset=UTF-8");

		try (PrintWriter out = response.getWriter()) {

			String action = request.getPathInfo();
			
			System.out.println(action);

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
		Integer edad = -1;
		String nombre = request.getParameter("nombre");
		String apPaterno = request.getParameter("apPaterno");
		String apMaterno = request.getParameter("apMaterno");
		if(request.getParameter("edad") != "") {			
			edad = Integer.parseInt(request.getParameter("edad"));
		}
		String rfc = request.getParameter("rfc");
		String telefono = request.getParameter("telefono");
		String fechaNacimiento = request.getParameter("fechaNacimiento");
		String domicilio = request.getParameter("domicilio");

		// Validar campos
		String mensaje = "";

		if (nombre == "" || apPaterno == "" || apMaterno == "" || edad == -1 || rfc == ""|| telefono == ""
				|| fechaNacimiento == ""|| domicilio == "") {
			mensaje = "Datos introducidos incorrectamente, éstos son: ";
			if (nombre == "") {
				mensaje += ("Nombre | ");
			}
			if (apPaterno == "") {
				mensaje += ("Apellido Paterno | ");
			}
			if (apMaterno == "") {
				mensaje += ("Apellido Materno | ");
			}
			if (edad == -1) {
				mensaje += ("Edad | ");
			}
			if (rfc == "") {
				mensaje += ("RFC | ");
			}
			if (telefono == "") {
				mensaje += ("Teléfono | ");
			}
			if (fechaNacimiento == "") {
				mensaje += ("Fecha de nacimiento| ");
			}
			if (domicilio == "") {
				mensaje += ("Domicilio | ");
			}
		} else {
			mensaje = "Datos llenados Correctamente!";
		}

		request.setAttribute("mensaje", mensaje);

		// Guardarlos en la base de datos

		// Regresar a la página

		RequestDispatcher dispatcher = request.getRequestDispatcher("/usuario/persona.jsp");
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
