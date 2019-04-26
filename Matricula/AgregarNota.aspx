<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgregarNota.aspx.cs" Inherits="Matricula.AgregarNota" %>

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
		<title>Editar Curso</title>
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
    <li><a href="DocentePrincipal.aspx">Principal</a></li>
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
	 <form class="form-horizontal">
         
            <div class="card accordion">
                <fieldset>
                    <br /><br /><br /><br />
                    <!-- Form Name -->
                    <legend>Asignar Notas</legend>  
                        <h5><span class="label label-primary">Agregar Nota</span></h5>
                        <div class="form-group">
                                <label class="col-md-4 control-label" for="materiaId">Curso a seleccionar:</label>
                                <div class="col-md-4">
                                    <asp:DropDownList ID="materiasddl"  class="form-control" runat="server" OnSelectedIndexChanged="MatriculaCambioDdl" OnTextChanged="MatriculaCambiadoDdlo" AutoPostBack="True"></asp:DropDownList>
                                </div>
                            </div>

                            <!-- Text input-->
                            <div class="form-group">
                                <label class="col-md-4 control-label" for="tbCursoCod">Lista de estudiantes:</label>
                                <div class="col-md-4">
                                    <asp:TextBox ID="estudiantesTxb" runat="server" Enabled="False" Height="210px" TextMode="MultiLine" Width="252px"></asp:TextBox>
                                </div>
                            </div>

                            <!-- Text input-->
                            <div class="form-group">
                                <label class="col-md-4 control-label" for="tbNombreCurso">ID del estudiante:</label>
                                <div class="col-md-4">
                                    <asp:TextBox ID="idTxb" runat="server"  class="form-control" ></asp:TextBox>
                                </div> 
                            </div>

                            <div class="form-group">
                                <label class="col-md-4 control-label" for="NombreMateria">Nota:</label>
                                <div class="col-md-4">
                                    <asp:TextBox ID="notaTxb" runat="server"  class="form-control" ></asp:TextBox>
                                </div> 
                            </div>
                            <div class="form-group">
                                <div class="col-md-4">
                                    <asp:Button ID="notaBtn" runat="server" class="btn btn-primary" Text="Asignar Nota" OnClick="NotaBtn" />
                                </div>
                           </div>
                           <div class="form-group">
                                <h5><strong><asp:Label ID="lblMensaje" runat="server" Text="" ForeColor="blue"></asp:Label></strong></h5>
                            </div>
                    </fieldset>
                    
             </div>
        </form>
     
	






	
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
