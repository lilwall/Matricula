<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InformacionPersonal.aspx.cs" Inherits="Matricula.InicioEstudiante" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
<html lang="zxx" class="no-js">
	<head>
		<!-- Mobile Specific Meta -->
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<!-- Favicon-->
		<link rel="shortcut icon" href="img/fav.png">
		<!-- Author Meta -->
		<!--meta name="" content=""-->
		<!-- Meta Description -->
		<meta name="description" content="">
		<!-- Meta Keyword -->
		<meta name="keywords" content="">
		<!-- meta character set -->
		<meta charset="UTF-8">
		<!-- Site Title -->
		<title>Información</title>
		<link href="https://fonts.googleapis.com/css?family=Poppins:100,400,300,500,600" rel="stylesheet">
		<!--
		CSS
		============================================= -->
		<link rel="stylesheet" href="css/linearicons.css">
		<link rel="stylesheet" href="css/owl.carousel.css">
		<link rel="stylesheet" href="css/font-awesome.min.css">
		<link rel="stylesheet" href="css/nice-select.css">
		<link rel="stylesheet" href="css/magnific-popup.css">
		<link rel="stylesheet" href="css/bootstrap.css">
		<link rel="stylesheet" href="css/main.css">
		<link rel="stylesheet" href="css/form.css">
	</head>
	<body>
        <form id="form1" runat="server">
		<!-- Start Header Area -->
		<header class="default-header">
			<div class="container">
				<div class="header-wrap">
					<div class="header-top d-flex justify-content-between align-items-center">
						<div class="logo">
							<a href="index.html"><img src="img/logo.png" alt=""></a>
						</div>
						<div class="main-menubar d-flex align-items-center">
							<nav class="hide">
								<a href="index.html">Inicio</a>
								<a href="generic.html">Generic</a>
								<a href="elements.html">Cerrar Sesión</a>
							</nav>
							<div class="menu-bar"><span class="lnr lnr-menu"></span></div>
						</div>
					</div>
				</div>
			</div>
		</header>
		<!-- End Header Area -->
		<!-- Start Banner Area -->
		<section class="generic-banner relative">
			<div class="overlay overlay-small"></div>
			<div class="container">
				<div class="row">
					<div class="col-lg-10">
						<div class="banner-content text">
								<h2 class="text-white">Enrollogic</h2>
							
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- End Banner Area -->
		<!-- Start Sample Area -->
		
		<!-- End Button -->
		<!-- Start Align Area -->
		
		<div class="section-top-border">
			<div class="row">
				<div class="col-lg-8 col-md-8">
					<h3 class="mb-30">Información Personal</h3>
					<br>
					<form action="#">
						<div class="mt-10">
							
                            <asp:TextBox ID="idTxb" placeholder="ID" name="ID" type="text"  onfocus="this.placeholder = ''" onblur="this.placeholder = 'ID'" required class="single-input" runat="server"></asp:TextBox>
						</div>
						<div class="mt-10">
                            <asp:TextBox ID="nombreTxb" placeholder="Nombre" name="Nombre" type="text"  onfocus="this.placeholder = ''" onblur="this.placeholder = 'Nombre'" required class="single-input" runat="server"></asp:TextBox>
						</div>
						<div class="mt-10">
                            <asp:TextBox ID="apellidoTxb" placeholder="Apellido" name="Apellido" type="text"  onfocus="this.placeholder = ''" onblur="this.placeholder = 'Apellido'" required class="single-input" runat="server"></asp:TextBox>
						</div>
						<div class="mt-10">
                            
                            <asp:TextBox ID="telefonoTxb" placeholder="Telefono" name="Telefono" type="text"  onfocus="this.placeholder = ''" onblur="this.placeholder = 'Telefono'" required class="single-input" runat="server"></asp:TextBox>
						</div>
						<div class="mt-10">
								<asp:TextBox ID="correoTxb" placeholder="Correo" name="Correo" type="text"  onfocus="this.placeholder = ''" onblur="this.placeholder = 'Correo'" required class="single-input" runat="server"></asp:TextBox>
                            
							</div>
						<div class="input-group-icon mt-10">
							<div class="icon"><i class="fa fa-thumb-tack" aria-hidden="true"></i></div>
                            <asp:TextBox ID="direccionTxb" placeholder="Dirección" name="Dirección" type="text"  onfocus="this.placeholder = ''" onblur="this.placeholder = 'Dirección'" required class="single-input" runat="server"></asp:TextBox>
						</div>
						<div class="input-group-icon mt-10">
							<div class="icon"><i class="fa fa-plane" aria-hidden="true"></i></div>
							<div class="form-select">
								<select>
									<option value="1">Ciudad</option>
									<option value="1">San José</option>
									<option value="1">Alajuela</option>
									<option value="1">Cartago</option>
									<option value="1">Heredia</option>
									<option value="1">Limón</option>
									<option value="1">Puntarenas</option>
									<option value="1">Guanacaste</option>
								</select>
							</div>
						</div>
						<div class="input-group-icon mt-10">
								<div class="mt-10">
										<input type="Pais" name="Pais " placeholder="Pais " onfocus="this.placeholder = ''" onblur="this.placeholder = 'Pais'" required class="single-input">
									</div>
									<div class="Recomendacion">
											<label class="Recomendacion" for="Recomendacion">Recomendaría la Universidad?</label>
											<div class="col-md-4">
												<select id="" name="" class="form-control">
													<option value="1">Si</option>
													<option value="2">No</option>
													
												</select>
											</div>
										</div>
						</div>

						
						<!-- For Gradient Border Use -->
						<!-- <div class="mt-10">
										<div class="primary-input">
														<input id="primary-input" type="text" name="first_name" placeholder="Primary color" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Primary color'">
														<label for="primary-input"></label>
										</div>
						</div> -->
						
					</form>
				</div>
				<div class="single-element-widget mt-30">
						<h3 class="mb-30">Encuesta de opinión</h3>
						<div class="switch-wrap d-flex justify-content-between">
							<p>01. Arts Club</p>
							<div class="primary-checkbox">
								<input type="checkbox" id="default-checkbox">
								<label for="default-checkbox"></label>
							</div>
						</div>
						<div class="switch-wrap d-flex justify-content-between">
							<p>02. Debate Club</p>
							<div class="primary-checkbox">
								<input type="checkbox" id="primary-checkbox" checked>
								<label for="primary-checkbox"></label>
							</div>
						</div>
						<div class="switch-wrap d-flex justify-content-between">
							<p>03. Civic House</p>
							<div class="primary-checkbox">
								<input type="checkbox" id="confirm-checkbox">
								<label for="confirm-checkbox"></label>
							</div>
						</div>
						<div class="switch-wrap d-flex justify-content-between">
							<p>04. Sports CLub</p>
							<div class="primary-checkbox">
								<input type="checkbox" id="disabled-checkbox" >
								<label for="disabled-checkbox"></label>
							</div>
						</div>
						<div class="switch-wrap d-flex justify-content-between">
								<p>04. Tech CLub</p>
								<div class="primary-checkbox">
									<input type="checkbox" id="tech-checkbox" >
									<label for="tech-checkbox"></label>
								</div>
						</div>
					
					<div class="single-element-widget mt-30">
							<h5 class="mb-30">En las nuevas instalaciones que deporte practicaría</h5>
							<div class="switch-wrap d-flex justify-content-between">
								<p>01. Jugar fútbol</p>
								<div class="primary-checkbox">
									<input type="checkbox" id="default-checkbox">
									<label for="default-checkbox"></label>
								</div>
							</div>
							<div class="switch-wrap d-flex justify-content-between">
								<p>02. Nadar</p>
								<div class="primary-checkbox">
									<input type="checkbox" id="primary-checkbox" checked>
									<label for="primary-checkbox"></label>
								</div>
							</div>
							<div class="switch-wrap d-flex justify-content-between">
								<p>03. Correr </p>
								<div class="primary-checkbox">
									<input type="checkbox" id="confirm-checkbox">
									<label for="confirm-checkbox"></label>
								</div>
							</div>
							<div class="switch-wrap d-flex justify-content-between">
								<p>04. Yoga</p>
								<div class="primary-checkbox">
									<input type="checkbox" id="disabled-checkbox" >
									<label for="disabled-checkbox"></label>
								</div>
							</div>
							<div class="switch-wrap d-flex justify-content-between">
									<p>04. Crossfit</p>
									<div class="primary-checkbox">
										<input type="checkbox" id="tech-checkbox" >
										<label for="tech-checkbox"></label>
									</div>
							
						
									<form class="Boton-Aceptar">
											<fieldset>
											
											<br>
											<br>
											<br>
											
											<!-- Button -->
											<div class="Boton-Aceptar">
											  <label class="col-md-4 control-label" for=""></label>
											  <div class="col-md-4">
                                                  <asp:Button ID="actualizarBtn" runat="server" Text="Actualizar"  class="btn btn-success" OnClick="ActualizarBtn"/>
                                                    <asp:Button ID="Cancelar" runat="server" Text="Cancelar"  class="btn btn-dangery"/><br />
                                                     <asp:Label ID="mensajeLbl" runat="server" Text="" Font-Bold="True" Font-Size="Medium" ForeColor="Red"></asp:Label>
											  </div>
											</div>
											
											</fieldset>
											</form>
					
					
					
						
						
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End Align Area -->
	<!-- Start contact Area -->
	
	<!-- End contact Area -->
	<!-- Start Footer Area -->
	<footer class="footer-area pt-40 pb-40">
			<div class="container">
					<div class="footer-bottom d-flex justify-content-between align-items-center flex-wrap">
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						<p class="footer-text m-0 text-white">Sistema de desarrollado con el fin de facilitar las labores de matricula en <a href="http://www.ulacit.ac.cr/" target="_blank">Ulacit</a></p>
						<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						<div class="footer-social d-flex align-items-center">
							<a href="https://www.facebook.com/ulacitcostarica/"><i class="fa fa-facebook"></i></a>
							<a href="https://twitter.com/ulacitcostarica?lang=en"><i class="fa fa-twitter"></i></a>
							<a href="https://www.eventbrite.com/"><i class="fa fa-dribbble"></i></a>
							<a href="https://bb9.ulacit.ac.cr/"><i class="fa fa-behance"></i></a>
						</div>
			</div>
		</div>
	</footer>
	<!-- End Footer Area -->
	<script src="js/vendor/jquery-2.2.4.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
	<script src="js/vendor/bootstrap.min.js"></script>
	<script src="js/jquery.ajaxchimp.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/jquery.nice-select.min.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/main.js"></script>
            </form>
</body>
</html>

</body>
</html>
