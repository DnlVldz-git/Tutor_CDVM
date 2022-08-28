package mx.ulsa.modelo;

public class Usuario {
	
	private Integer id;
	private String correo;
	private String contrasenia;
	private Boolean estatus;
	private String fechaRegistro;
	private String fechaVigencia;
	

	public Usuario(Integer id, String correo, String contrasenia, Boolean estatus, String fechaRegistro,
			String fechaVigencia) {
		super();
		this.id = id;
		this.correo = correo;
		this.contrasenia = contrasenia;
		this.estatus = estatus;
		this.fechaRegistro = fechaRegistro;
		this.fechaVigencia = fechaVigencia;
	}	
	
	public Usuario() {}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getCorreo() {
		return correo;
	}

	public void setCorreo(String correo) {
		this.correo = correo;
	}

	public String getContrasenia() {
		return contrasenia;
	}

	public void setContrasenia(String contrasenia) {
		this.contrasenia = contrasenia;
	}

	public Boolean getEstatus() {
		return estatus;
	}

	public void setEstatus(Boolean estatus) {
		this.estatus = estatus;
	}

	public String getFechaRegistro() {
		return fechaRegistro;
	}

	public void setFechaRegistro(String fechaRegistro) {
		this.fechaRegistro = fechaRegistro;
	}

	public String getFechaVigencia() {
		return fechaVigencia;
	}

	public void setFechaVigencia(String fechaVigencia) {
		this.fechaVigencia = fechaVigencia;
	}

}
