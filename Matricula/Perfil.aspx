<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Perfil.aspx.cs" Inherits="Matricula.Perfil" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
		<!-- Mobile Specific Meta -->
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<!-- Favicon-->
		<link rel="shortcut icon" href="img/fav.png">
		<!-- Author Meta -->
		<meta name="author" content="Colorlib">
		<!-- Meta Description -->
		<meta name="description" content="">
		<!-- Meta Keyword -->
		<meta name="keywords" content="">
		<!-- meta character set -->
		<meta charset="UTF-8">
		<!-- Site Title -->
		<title>Perfil</title>
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
        <form id="form1" runat="server">
		<header class="default-header">
			<div class="container">
				<div class="header-wrap">
					<div class="header-top d-flex justify-content-between align-items-center">
						<div class="logo">
							<!--src cambiarlo por la imagen de la u y el index.html por aspx-->
							<a href="index.html"><img src="img/logo.png" alt=""></a>
						</div>
						<div class="main-menubar d-flex align-items-center">
							<nav class="hide">
								<a href="index.html">Inicio</a>
								<a href="generic.html">Perfil</a>
								<a href="elements.html">Cerrar sesión</a>
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
				<div class="row ">
					<div class="col-lg-10">
						<div class="banner-content text">
							<h2 class="texto-blanco">Enrollogic</h2>
						
					<p class="banner-content text text-white">Establezcla sus preferencias de sus cursos.</p>
						</div>
					</div>
				</div>
			</div>
		</section>

		<!-- Form -->
		
			<fieldset>
			
			<!-- Form Name -->

		 <div class = "banner-content text-center">
			 <br/>
			 <br/>
			    </div>
			 <legend>Seleccione su horario para cada día</legend>

		 </div>
			
			<!-- Select Basic -->
			<div class="form-group">
				<label class="Monday" for="Lunes">Lunes</label>
				<div class="col-md-4">
                    <asp:DropDownList ID="lunesHoraDdl" runat="server"  class="form-control">
                        <asp:ListItem Selected="True">Mañana</asp:ListItem>
                        <asp:ListItem>Tarde</asp:ListItem>
                        <asp:ListItem>Noche</asp:ListItem>
					</asp:DropDownList>
                    <br/>
                    <asp:DropDownList ID="lunesSedeDdl" runat="server" class="form-control">
                        <asp:ListItem Selected="True">Tournon</asp:ListItem>
                        <asp:ListItem>Escazu</asp:ListItem>
                    </asp:DropDownList>
				</div>
			</div>
			
			<!-- Select Basic -->
			<div class="form-group">
				<label class="Tuesday" for="Martes">Martes</label>
				<div class="col-md-4">
					<asp:DropDownList ID="martesHoraDdl" runat="server"  class="form-control">
                        <asp:ListItem Selected="True">Mañana</asp:ListItem>
                        <asp:ListItem>Tarde</asp:ListItem>
                        <asp:ListItem>Noche</asp:ListItem>
					</asp:DropDownList>
                    <br/>
                    <asp:DropDownList ID="martesSedeDdl" runat="server" class="form-control">
                        <asp:ListItem Selected="True">Tournon</asp:ListItem>
                        <asp:ListItem>Escazu</asp:ListItem>
                    </asp:DropDownList>
				</div>
			</div>
			
			<!-- Select Basic -->
			<div class="form-group">
				<label class="Wenesday" for="Miercoles">Miercoles</label>
				<div class="col-md-4">
					<asp:DropDownList ID="miercolesHoraDdl" runat="server"  class="form-control">
                        <asp:ListItem Selected="True">Mañana</asp:ListItem>
                        <asp:ListItem>Tarde</asp:ListItem>
                        <asp:ListItem>Noche</asp:ListItem>
					</asp:DropDownList>
                    <br/>
                    <asp:DropDownList ID="miercolesSedeDdl" runat="server" class="form-control">
                        <asp:ListItem Selected="True">Tournon</asp:ListItem>
                        <asp:ListItem>Escazu</asp:ListItem>
                    </asp:DropDownList>
				</div>
			</div>
			
			<!-- Select Basic -->
			<div class="form-group">
				<label class="Thursday" for="Jueves">Jueves</label>
				<div class="col-md-4">
					<asp:DropDownList ID="juevesHoraDdl" runat="server"  class="form-control">
                        <asp:ListItem Selected="True">Mañana</asp:ListItem>
                        <asp:ListItem>Tarde</asp:ListItem>
                        <asp:ListItem>Noche</asp:ListItem>
					</asp:DropDownList>
                    <br/>
                    <asp:DropDownList ID="juevesSedeDdl" runat="server" class="form-control">
                        <asp:ListItem Selected="True">Tournon</asp:ListItem>
                        <asp:ListItem>Escazu</asp:ListItem>
                    </asp:DropDownList>
				</div>
			</div>
			
			<!-- Select Basic -->
			<div class="form-group">
				<label class="Friday" for="Viernes">Viernes</label>
				<div class="col-md-4">
					<asp:DropDownList ID="viernesHoraDdl" runat="server"  class="form-control">
                        <asp:ListItem Selected="True">Mañana</asp:ListItem>
                        <asp:ListItem>Tarde</asp:ListItem>
                        <asp:ListItem>Noche</asp:ListItem>
					</asp:DropDownList>
                    <br/>
                    <asp:DropDownList ID="viernesSedeDdl" runat="server" class="form-control">
                        <asp:ListItem Selected="True">Tournon</asp:ListItem>
                        <asp:ListItem>Escazu</asp:ListItem>
                    </asp:DropDownList>
				</div>
			</div>
			
			<!-- Select Basic -->
			<div class="form-group">
				<label class="Sadurday" for="Sabado">Sabado</label>
				<div class="col-md-4">
					<asp:DropDownList ID="sabadoHoraDdl" runat="server"  class="form-control">
                        <asp:ListItem Selected="True">Mañana</asp:ListItem>
                        <asp:ListItem>Tarde</asp:ListItem>
                        <asp:ListItem>Noche</asp:ListItem>
					</asp:DropDownList>
                    <br/>
                    <asp:DropDownList ID="sabadoSedeDdl" runat="server" class="form-control">
                        <asp:ListItem Selected="True">Tournon</asp:ListItem>
                        <asp:ListItem>Escazu</asp:ListItem>
                    </asp:DropDownList>
				</div>
			</div>
			
			<!-- Button (Double) -->
			<div class="Buttoms">
				<label class="col-md-4 control-label" for=""></label>
				<div class="col-md-8">
					<asp:Button ID="Button1" class="btn btn-primary" runat="server" Text="Aceptar" OnClick="aceptarBtn" />
					<button id="Cancelar" name="Cancelar" class="btn btn-inverse">Cancelar</button>
                    <br/>
                    <asp:Label ID="mensajeLbl" runat="server" Text="" Font-Bold="True" Font-Size="Medium" ForeColor="#ff9e9e"></asp:Label>
				</div>
			</div>
			</fieldset>
			</form>
			
			

		
		
		<!-- End form -->

		<!-- Start video Area -->
		
		<!-- End video Area -->
		<!-- About Generic Start -->
		
		<!-- End Generic Start -->
		<!-- Start contact Area -->
		
		<!-- End contact Area -->
		<!-- Start Footer Area -->
		<footer class="footer-area pt-40 pb-40">
			<div class="container">
				<div class="footer-bottom d-flex justify-content-between align-items-center flex-wrap">
					<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
					<p class="footer-text m-0 text-white">Sistema de desarrollado con el fin de facilitar las labores de matricula en /www.ulacit.ac.cr/" target="_blank">Ulacit</a></p>
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
