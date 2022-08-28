<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Tutor</title>
<jsp:include page="/componentes/bootstrap.jsp"></jsp:include>
</head>
<body>

	<header>
		<nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
			<div class="container-fluid">
				<a class="navbar-brand" href="#">Proyecto tutor</a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarCollapse"
					aria-controls="navbarCollapse" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarCollapse">
					<ul class="navbar-nav me-auto mb-2 mb-md-0">
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="#">Inicio</a></li>
						<li class="nav-item"><a class="nav-link" href="<%=request.getContextPath()%>/usuario/login.jsp">Login</a></li>
						<li class="nav-item"><a class="nav-link" href="<%=request.getContextPath()%>/usuario/registrar.jsp">Registrar</a></li>
						<li class="nav-item"><a class="nav-link" href="<%=request.getContextPath()%>/FormularioRegistroServlet">Cookies</a></li>
						<li class="nav-item"><a class="nav-link" href="<%=request.getContextPath()%>/usuario/dashboard.jsp">Dashboard</a></li>
						</li>
					</ul>					
				</div>
			</div>
		</nav>
	</header>

	<main>

		<div id="myCarousel" class="carousel slide" data-bs-ride="carousel">
			<div class="carousel-indicators">
				<button type="button" data-bs-target="#myCarousel"
					data-bs-slide-to="0" class="" aria-label="Slide 1"></button>
				<button type="button" data-bs-target="#myCarousel"
					data-bs-slide-to="1" aria-label="Slide 2" class=""></button>
				<button type="button" data-bs-target="#myCarousel"
					data-bs-slide-to="2" aria-label="Slide 3" class="active"
					aria-current="true"></button>
			</div>
			<div class="carousel-inner">
				<div class="carousel-item">
					<svg class="bd-placeholder-img" width="100%" height="700px"
						xmlns="http://www.w3.org/2000/svg" aria-hidden="true"
						preserveAspectRatio="xMidYMid slice" focusable="false">
						<rect width="100%" height="100%" fill="#777"></rect></svg>

					<div class="container">
						<div class="carousel-caption text-start">
							<h1>Login</h1>			
							<p>											
								<a class="btn btn-lg btn-primary" href="<%=request.getContextPath()%>/usuario/login.jsp">Ingrese a su cuenta</a>
							</p>
						</div>
					</div>
				</div>
				<div class="carousel-item">
					<svg class="bd-placeholder-img" width="100%" height="700px"
						xmlns="http://www.w3.org/2000/svg" aria-hidden="true"
						preserveAspectRatio="xMidYMid slice" focusable="false">
						<rect width="100%" height="100%" fill="#777"></rect></svg>

					<div class="container">
						<div class="carousel-caption">
							<h1>Registrarse</h1>							
							<p>
								<a class="btn btn-lg btn-primary" href="<%=request.getContextPath()%>/usuario/registrar.jsp">Registrese</a>
							</p>
						</div>
					</div>
				</div>
				<div class="carousel-item active">
					<svg class="bd-placeholder-img" width="100%" height="700px"
						xmlns="http://www.w3.org/2000/svg" aria-hidden="true"
						preserveAspectRatio="xMidYMid slice" focusable="false">
						<rect width="100%" height="100%" fill="#777"></rect></svg>

					<div class="container">
						<div class="carousel-caption text-end">
							<h1>Ejercicio cookie</h1>							
							<p>
								<a class="btn btn-lg btn-primary" href="<%=request.getContextPath()%>/FormularioRegistroServlet">Ir a ejercicio</a>
							</p>
						</div>
					</div>
				</div>
			</div>
			<button class="carousel-control-prev" type="button"
				data-bs-target="#myCarousel" data-bs-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Previous</span>
			</button>
			<button class="carousel-control-next" type="button"
				data-bs-target="#myCarousel" data-bs-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Next</span>
			</button>
		</div>


		<!-- Marketing messaging and featurettes
  ================================================== -->
		<!-- Wrap the rest of the page in another container to center all the content. -->

		<div class="container marketing mt-3">

			<!-- Three columns of text below the carousel -->
			<div class="row">
				<div class="col-lg-4">
					<svg class="bd-placeholder-img rounded-circle" width="140"
						height="140" xmlns="http://www.w3.org/2000/svg" role="img"
						aria-label="Placeholder: 140x140"
						preserveAspectRatio="xMidYMid slice" focusable="false">
						<title>Placeholder</title><rect width="100%" height="100%"
							fill="#777"></rect>
						<text x="50%" y="50%" fill="#777" dy=".3em">140x140</text></svg>

					<h2 class="fw-normal">Heading</h2>
					<p>Some representative placeholder content for the three
						columns of text below the carousel. This is the first column.</p>
					<p>
						<a class="btn btn-secondary" href="#">View details »</a>
					</p>
				</div>
				<!-- /.col-lg-4 -->
				<div class="col-lg-4">
					<svg class="bd-placeholder-img rounded-circle" width="140"
						height="140" xmlns="http://www.w3.org/2000/svg" role="img"
						aria-label="Placeholder: 140x140"
						preserveAspectRatio="xMidYMid slice" focusable="false">
						<title>Placeholder</title><rect width="100%" height="100%"
							fill="#777"></rect>
						<text x="50%" y="50%" fill="#777" dy=".3em">140x140</text></svg>

					<h2 class="fw-normal">Heading</h2>
					<p>Another exciting bit of representative placeholder content.
						This time, we've moved on to the second column.</p>
					<p>
						<a class="btn btn-secondary" href="#">View details »</a>
					</p>
				</div>
				<!-- /.col-lg-4 -->
				<div class="col-lg-4">
					<svg class="bd-placeholder-img rounded-circle" width="140"
						height="140" xmlns="http://www.w3.org/2000/svg" role="img"
						aria-label="Placeholder: 140x140"
						preserveAspectRatio="xMidYMid slice" focusable="false">
						<title>Placeholder</title><rect width="100%" height="100%"
							fill="#777"></rect>
						<text x="50%" y="50%" fill="#777" dy=".3em">140x140</text></svg>

					<h2 class="fw-normal">Heading</h2>
					<p>And lastly this, the third column of representative
						placeholder content.</p>
					<p>
						<a class="btn btn-secondary" href="#">View details »</a>
					</p>
				</div>
				<!-- /.col-lg-4 -->
			</div>
			<!-- /.row -->


			<!-- START THE FEATURETTES -->

			<hr class="featurette-divider">

			<div class="row featurette">
				<div class="col-md-7">
					<h2 class="featurette-heading fw-normal lh-1">
						First featurette heading. <span class="text-muted">It’ll
							blow your mind.</span>
					</h2>
					<p class="lead">Some great placeholder content for the first
						featurette here. Imagine some exciting prose here.</p>
				</div>
				<div class="col-md-5">
					<svg
						class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto"
						width="500" height="500" xmlns="http://www.w3.org/2000/svg"
						role="img" aria-label="Placeholder: 500x500"
						preserveAspectRatio="xMidYMid slice" focusable="false">
						<title>Placeholder</title><rect width="100%" height="100%"
							fill="#eee"></rect>
						<text x="50%" y="50%" fill="#aaa" dy=".3em">500x500</text></svg>

				</div>
			</div>

			<hr class="featurette-divider">

			<div class="row featurette">
				<div class="col-md-7 order-md-2">
					<h2 class="featurette-heading fw-normal lh-1">
						Oh yeah, it’s that good. <span class="text-muted">See for
							yourself.</span>
					</h2>
					<p class="lead">Another featurette? Of course. More placeholder
						content here to give you an idea of how this layout would work
						with some actual real-world content in place.</p>
				</div>
				<div class="col-md-5 order-md-1">
					<svg
						class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto"
						width="500" height="500" xmlns="http://www.w3.org/2000/svg"
						role="img" aria-label="Placeholder: 500x500"
						preserveAspectRatio="xMidYMid slice" focusable="false">
						<title>Placeholder</title><rect width="100%" height="100%"
							fill="#eee"></rect>
						<text x="50%" y="50%" fill="#aaa" dy=".3em">500x500</text></svg>

				</div>
			</div>

			<hr class="featurette-divider">

			<div class="row featurette">
				<div class="col-md-7">
					<h2 class="featurette-heading fw-normal lh-1">
						And lastly, this one. <span class="text-muted">Checkmate.</span>
					</h2>
					<p class="lead">And yes, this is the last block of
						representative placeholder content. Again, not really intended to
						be actually read, simply here to give you a better view of what
						this would look like with some actual content. Your content.</p>
				</div>
				<div class="col-md-5">
					<svg
						class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto"
						width="500" height="500" xmlns="http://www.w3.org/2000/svg"
						role="img" aria-label="Placeholder: 500x500"
						preserveAspectRatio="xMidYMid slice" focusable="false">
						<title>Placeholder</title><rect width="100%" height="100%"
							fill="#eee"></rect>
						<text x="50%" y="50%" fill="#aaa" dy=".3em">500x500</text></svg>

				</div>
			</div>

			<hr class="featurette-divider">

			<!-- /END THE FEATURETTES -->

		</div>
		<!-- /.container -->


		<!-- FOOTER -->
		<footer class="container">
			<p class="float-end">
				<a href="#">Back to top</a>
			</p>
			<p>
				© 2017–2022 Company, Inc. · <a href="#">Privacy</a> · <a href="#">Terms</a>
			</p>
		</footer>
	</main>


	<script src="/docs/5.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa"
		crossorigin="anonymous"></script>




</body>
<!-- <body>
	  <div class="container px-4 py-5" id="featured-3">

		<div class="list-group w-auto">
		
		
			
			<h2 class="pb-2 border-bottom">Proyecto Tutor</h2>
			
			<a href="<%=request.getContextPath()%>/usuario/login.jsp"
				class="list-group-item list-group-item-action d-flex gap-3 py-3"
				aria-current="true"> 
				
				<img src="<%=request.getContextPath()%>/images/crear.png" alt="twbs" width="32" height="32" class="rounded-circle flex-shrink-0">
				
				<div class="d-flex gap-2 w-100 justify-content-between">
					<div>
						<h6 class="mb-0">Login</h6>
						<p class="mb-0 opacity-75">Autenticar usuario.</p>
					</div>
					<small class="opacity-50 text-nowrap">>></small>
				</div>
			</a> 
			
			<a href="<%=request.getContextPath()%>/usuario/registrar.jsp"
				class="list-group-item list-group-item-action d-flex gap-3 py-3"
				aria-current="true"> 
				
				<img src="<%=request.getContextPath()%>/images/leer.png" alt="twbs" width="32" height="32" class="rounded-circle flex-shrink-0">
				
				<div class="d-flex gap-2 w-100 justify-content-between">
					<div>
						<h6 class="mb-0">Registrar</h6>
						<p class="mb-0 opacity-75">Crear usuario nuevo.</p>
					</div>
					<small class="opacity-50 text-nowrap">>></small>
				</div>
			</a>
			
			<a href="<%=request.getContextPath()%>/FormularioRegistroServlet"
				class="list-group-item list-group-item-action d-flex gap-3 py-3"
				aria-current="true"> 
				
				<img src="<%=request.getContextPath()%>/images/actualizar.png" alt="twbs" width="32" height="32" class="rounded-circle flex-shrink-0">
				
				<div class="d-flex gap-2 w-100 justify-content-between">
					<div>
						<h6 class="mb-0">Cookies</h6>
						<p class="mb-0 opacity-75">Uso de cookies.</p>
					</div>
					<small class="opacity-50 text-nowrap">>></small>
				</div>
			</a>
		</div>

	</div>
	<br/><br/><br/>
	<jsp:include page="/componentes/footerPublico.jsp"></jsp:include>
</body>-->
</html>