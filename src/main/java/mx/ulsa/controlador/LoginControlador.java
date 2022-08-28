package mx.ulsa.controlador;

import jakarta.servlet.ServletException;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Servlet implementation class LoginControlador
 */
public class LoginControlador extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginControlador() {
		super();
		// TODO Auto-generated constructor stub
	}

	private void procesarRespuesta(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html;charset=UTF-8");
		
		String name = request.getParameter("email");
		String pwd = request.getParameter("password");		
		
		try (PrintWriter out = response.getWriter()) {
			out.println("<!DOCTYPE html>");
			out.println("<html>");
			out.println("<head>");
			out.println("<title>Servlet IndexControlador</title>");
			out.println("</head>");
			out.println("<body>");
			out.println("<h3>Nombre: " + name + "</h3>");
			out.println("<h3>Password: " + pwd+ "</h3>");
			out.println("<p>Contenido de respuesta del Servlet</p>");
			out.println("</body>");
			out.println("</html>");
		}
				
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		procesarRespuesta(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		procesarRespuesta(request, response);
	}

}
