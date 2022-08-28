package mx.ulsa.controlador;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import mx.ulsa.modelo.Persona;
import mx.ulsa.modelo.Usuario;

import java.io.IOException;
import java.io.PrintWriter;

/**
 * Servlet implementation class UsuarioControlador
 */
public class UsuarioControlador extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UsuarioControlador() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void procesar(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html; charset=UTF-8");

		try (PrintWriter out = response.getWriter()) {

			String action = request.getPathInfo();

			switch (action) {
			case "/login":
				this.perfil(request, response);
				break;
			case "/registrar":
				this.registrar(request, response);
				break;
			case "/registrarUsuario":
				this.registrarUsuario(request, response);
				break;

			default:
				response.sendRedirect(request.getContextPath() + "/");
			}

		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}

	private void registrarUsuario(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String email = request.getParameter("correo");
		String status = request.getParameter("estatus");
		String pwd = request.getParameter("contrasenia").trim();
		String fechaRegistro = request.getParameter("fechaRegistro");
		String fechaVigencia = request.getParameter("fechaVigencia");

		System.out.println(email);
		System.out.println(status);
		System.out.println(pwd);
		System.out.println(fechaRegistro == "");
		System.out.println(fechaVigencia == "");

		// Validar campos
		String mensaje = "";

		if (email == "" || status == null || pwd == "" || fechaRegistro == "" || fechaVigencia == "") {
			mensaje = "Datos introducidos incorrectamente, éstos son: ";
			if (email == "") {
				mensaje += ("Correo | ");
			}
			if (pwd == "") {
				mensaje += ("Contraseña | ");
			}
			if (status == null) {
				mensaje += ("Estatus | ");
			}
			if (fechaRegistro == "") {
				mensaje += ("Fecha de registro | ");
			}
			if (fechaVigencia == "") {
				mensaje += ("Fecha de vigencia.");
			}
		} else {
			mensaje = "Datos llenados Correctamente!";
		}

		request.setAttribute("mensaje", mensaje);

		// Guardarlos en la base de datos

		// Regresar a la página

		RequestDispatcher dispatcher = request.getRequestDispatcher("/usuario/usuario.jsp");
		dispatcher.forward(request, response);
	}

	private void registrar(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {
			String name = request.getParameter("name");
			String fatherSurname = request.getParameter("fatherSurname");
			String motherSurname = request.getParameter("motherSurname");
			String age = request.getParameter("age");
			String phone = request.getParameter("phone");
			String email = request.getParameter("email");
			String pwd = request.getParameter("password").trim();
			String enterprise = request.getParameter("enterprise");
			String address = request.getParameter("address");
			// Persona persona = new Persona(0, name, fatherSurname, motherSurname,
			// Integer.parseInt(age), phone);

			// Usuario usuario = new Usuario(0, email, pwd, true);

		} catch (Exception ex) {
			ex.getStackTrace();
		} finally {
			RequestDispatcher dispatcher = request.getRequestDispatcher("/usuario/login.jsp");
			dispatcher.forward(request, response);
		}

	}

	protected void perfil(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String email = request.getParameter("email");
		String pwd = request.getParameter("password");

		if ((email == null || email == "") && (pwd == null || pwd == "")) {
			RequestDispatcher d = request.getRequestDispatcher("/usuario/login.jsp");
			d.forward(request, response);
		} else {
			// TODO buscar pwd e email en bd
			// Si el usuario existe subimos a sesión sus credenciales
			Usuario usuario = new Usuario();

			usuario.setCorreo(email);
			usuario.setContrasenia(pwd.trim());

			HttpSession session = request.getSession();

			synchronized (session) {
				session.setAttribute("usuario", usuario);

				response.sendRedirect(request.getContextPath() + "/usuario/dashboard.jsp");
			}
		}
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		procesar(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		procesar(request, response);
	}

}
