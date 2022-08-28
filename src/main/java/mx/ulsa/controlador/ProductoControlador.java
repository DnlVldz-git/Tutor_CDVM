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
 * Servlet implementation class ProductoControlador
 */
public class ProductoControlador extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductoControlador() {
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

    	Float precio = -1f;
    	Integer numExistencias = -1;
    	Float ivaPorcentaje = -1f;
    	
		String nombre = request.getParameter("nombre");
		String descripcion = request.getParameter("descripcion");
		if(request.getParameter("precio") != "") {			
			precio = Float.parseFloat(request.getParameter("precio"));
		}		
		String imagen = request.getParameter("imagen");
		if(request.getParameter("numExistencias") != ""){			
			numExistencias = Integer.parseInt(request.getParameter("numExistencias"));
		}
		String codigoBarras = request.getParameter("codigoBarras");
		if(request.getParameter("ivaPorcentaje") != ""){			
			ivaPorcentaje = Float.parseFloat(request.getParameter("ivaPorcentaje"));
		}

		// Validar campos
		String mensaje = "";

		if (nombre == "" || descripcion == "" || precio == -1f || imagen == "" || numExistencias == -1|| codigoBarras == ""
				|| ivaPorcentaje == -1f) {
			mensaje = "Datos introducidos incorrectamente, éstos son: ";
			if (nombre == "") {
				mensaje += ("Nombre | ");
			}
			if (descripcion == "") {
				mensaje += ("Descripción| ");
			}
			if (precio == -1f) {
				mensaje += ("Precio | ");
			}
			if (imagen == "") {
				mensaje += ("Imagen | ");
			}
			if (numExistencias == -1) {
				mensaje += ("Número de existencias | ");
			}
			if (codigoBarras == "") {
				mensaje += ("Código de barras| ");
			}
			if (ivaPorcentaje == -1f) {
				mensaje += ("Porcentaje de iva | ");
			}
		} else {
			mensaje = "Datos llenados Correctamente!";
		}

		request.setAttribute("mensaje", mensaje);

		// Guardarlos en la base de datos

		// Regresar a la página

		RequestDispatcher dispatcher = request.getRequestDispatcher("/producto/producto.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		procesar(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		procesar(request, response);
	}

}
