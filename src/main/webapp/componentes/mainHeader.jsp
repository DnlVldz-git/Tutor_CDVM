<header
	class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0 shadow">
	<img alt="${param.usuarioCorreo}" class="rounded float-start mx-2" width="30" src="https://thumbs.dreamstime.com/b/user-icon-trendy-flat-style-isolated-grey-background-user-symbol-user-icon-trendy-flat-style-isolated-grey-background-123663211.jpg"/>
	<a class="navbar-brand col-md-3 col-lg-2 me-0 px-3 fs-6" href="#">
	${param.usuarioCorreo}</a>
	<button class="navbar-toggler position-absolute d-md-none collapsed"
		type="button" data-bs-toggle="collapse" data-bs-target="#sidebarMenu"
		aria-controls="sidebarMenu" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="navbar-nav">
		<div class="nav-item text-nowrap">
			<a class="nav-link px-3"
				href="<%=request.getContextPath()%>/index.jsp">Inicio</a>
		</div>
	</div>
</header>