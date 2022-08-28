package mx.ulsa.controlador;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import util.CookieUtilerias;

import java.io.IOException;
import java.io.PrintWriter;

/**
 * Servlet implementation class FormularioRegistroServlet
 */
public class FormularioRegistroServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FormularioRegistroServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		String actionURL = request.getContextPath() + "/RegistroServlet";
		String nombre = CookieUtilerias.getCookieValor(request, "nombre", "");
		String apellido = CookieUtilerias.getCookieValor(request, "apellido", "");
		String email = CookieUtilerias.getCookieValor(request, "email", "");
		String docType = "<!DOCTYPE>\n";
		String title = "Registro";
		out.println(docType + "<htlm> \n" + "<head><title>" + title + "</title></head> \n"
				+ "<body bgcolor=\"#ECF6CE\"> \n" + "<center> \n" + "<h1>" +title +"</h1> \n" + "<form action=\""
				+ actionURL + "\"> \n" + "Nombre: \n" + "<input type=\"text\" name=\"nombre\" " + "value=\"" + nombre
				+ "\"> <br/> \n" + "Apellido: \n" + "<input type=\"text\" name=\"apellido\" " + "value=\"" + apellido
				+ "\"> <br/> \n" + "E-mail: \n" + "<input type=\"email\" name=\"email\" " + "value=\"" + email
				+ "\"> <br/> \n" + "<input type=\"submit\" value=\"Registro\"> \n"
				+ "</form></center></body></html>");
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
