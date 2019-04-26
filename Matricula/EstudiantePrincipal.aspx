<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EstudiantePrincipal.aspx.cs" Inherits="Matricula.EstudiantePrincipal" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>Enrollogic</title>
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
		<title>Enrollogic</title>
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
							<style>
ul {
  list-style-type: none;
  margin: 0;
  padding:0;
 
 
}

li {
  display: inline;
  padding:10px;
  color:white;
}
</style>
<ul>
  <li><a href="Principal.aspx">Inicio</a></li>
  <li><a href="InicioSesion.aspx">Cerrar Sesion</a></li>
</ul>
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
		<div class="row">
		
		<div class= "slide">  </div> 
		<meta name="viewport" content="width=device-width, initial-scale=1">
				<meta content="text/html; charset=iso-8859-2" http-equiv="Content-Type">
				<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
				<style>
				.mySlides {display:none;}
				</style>
				

				<div class="w3-content w3-section" style="max-width:500px">
				  <img class="mySlides" src="1.jpeg" style="width:100%">
				  <img class="mySlides" src="2.jpeg" style="width:100%">
				  <img class="mySlides" src="3.jpeg" style="width:100%">
				  <img class="mySlides" src="4.jpeg" style="width:100%">
				</div>
				
				<script>
				var myIndex = 0;
				carousel();
				
				function carousel() {
				  var i;
				  var x = document.getElementsByClassName("mySlides");
				  for (i = 0; i < x.length; i++) {
					x[i].style.display = "none";  
				  }
				  myIndex++;
				  if (myIndex > x.length) {myIndex = 1}    
				  x[myIndex-1].style.display = "block";  
				  setTimeout(carousel, 2000); // Change image every 2 seconds
				}
				</script>
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
	
				<div class="row">
					<div class="column">
					<label class= "Carrera2" for "Carrera"> <a href="InformacioPersonal.aspx"> <h3> Información Personal </h3> </a> </label>
					<div>
					<label class= "Carrera2 " for "Carrera"> <a href="Principal.aspx"> <h3> Información general </h3> </a> </label>
				</div>
				<div>
					<label class= "Carrera2" for "Carrera"> <a href="Matricular.aspx"> <h3> Matricular </h3> </a> </label>
				</div>
				

				</div>
					
					
					
						
						
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
	<div>
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
</body>
</html>
