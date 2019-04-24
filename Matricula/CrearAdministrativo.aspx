﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CrearAdministrativo.aspx.cs" Inherits="Matricula.CrearAdministrativo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        
<html lang="zxx" class="no-js">
	<head>
		<!-- Mobile Specific Meta -->
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<!-- Favicon-->
		<link rel="shortcut icon" href="img/fav.png">
		<!-- Author Meta -->
		<meta name="" content="">
		<!-- Meta Description -->
		<meta name="description" content="">
		<!-- Meta Keyword -->
		<meta name="keywords" content="">
		<!-- meta character set -->
		<meta charset="UTF-8">
		<!-- Site Title -->
		<title>Crear Administrativo</title>
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
		<form class="form-horizontal">
			<fieldset>
			
			<!-- Form Name -->
			<div style="margin-left: 540px;">
				<legend>Crear usuario administrativo</legend>
			</div>
			
			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="ID">ID</label>  
				<div class="col-md-4">
				<input id="ID" name="ID" type="text" placeholder="ID" class="form-control input-md" required="">
					
				</div>
			</div>
			
			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="Nombre">Nombre</label>  
				<div class="col-md-4">
				<input id="Nombre" name="Nombre" type="text" placeholder="Nombre" class="form-control input-md" required="">
					
				</div>
			</div>
			
			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="Apellidos">Apellidos</label>  
				<div class="col-md-4">
				<input id="Apellidos" name="Apellidos" type="text" placeholder="Apellidos" class="form-control input-md" required="">
					
				</div>
			</div>
			
			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="Telefono">Telefono</label>  
				<div class="col-md-4">
				<input id="Telefono" name="Telefono" type="text" placeholder="Telefono" class="form-control input-md" required="">
					
				</div>
			</div>
			
			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="Correo">Correo</label>  
				<div class="col-md-4">
				<input id="Correo" name="Correo" type="text" placeholder="Correo electronico" class="form-control input-md" required="">
					
				</div>
			</div>
			
			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="usuario">Usuario</label>  
				<div class="col-md-4">
				<input id="usuario" name="usuario" type="text" placeholder="Usuario" class="form-control input-md" required="">
					
				</div>
			</div>
			
			<!-- Password input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="contrasena">Contraseña</label>
				<div class="col-md-4">
					<input id="contrasena" name="contrasena" type="password" placeholder="Contraseña" class="form-control input-md" required="">
					
				</div>
			</div>
			
			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="Puesto">Puesto</label>  
				<div class="col-md-4">
				<input id="Puesto" name="Puesto" type="text" placeholder="Puesto" class="form-control input-md" required="">
					
				</div>
			</div>
			
			<!-- Button -->
			<div class="form-group">
				<label class="col-md-4 control-label" for="Crearbtn"></label>
				<div class="col-md-4">
					<button id="Crearbtn" name="Crearbtn" class="btn btn-primary">Crear</button>
				</div>
			</div>
			
			</fieldset>
			</form>
			
			
			
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
</body>
</html>
    </form>
</body>
</html>
