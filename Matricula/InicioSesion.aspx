<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InicioSesion.aspx.cs" Inherits="Matricula.WebForm1" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Inicio de Sesion</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main1.css">
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100 p-l-55 p-r-55 p-t-65 p-b-50">
                <span class="login100-form-title p-b-33">
						Iniciar Sesion
					</span>
				</div>
					

					<div class="wrap-input100 validate-input" data-validate = "Usuario invalido">
                        <asp:TextBox ID="usuarioTxt" runat="server" Height="64px" Width="600px">usuario</asp:TextBox>
                        </span>
					</div>

					<div class="wrap-input100 rs1 validate-input" data-validate="La contraseña es requerida para continuar">
                        <asp:TextBox ID="contrasenaTxt" runat="server" Height="64px" Width="600px" Font-Strikeout="False">contraseña</asp:TextBox>
                        </span>
					</div>

					<div class="container-login100-form-btn m-t-20">
							<asp:Button class="login100-form-btn" ID="InicioSesionBtn" runat="server" Height="50px" OnClick="IniciarSesionBtn" Text="Iniciar Sesion" Width="600px" BorderStyle="None" />
                       <a href="Principal.aspx"
					</div>

					<div class="text-center p-t-45 p-b-4">
						<span class="txt1">
							Olvido su?
						</span>

						<a href="#" class="txt2 hov1">
							Usuario / Contraseña
						</a>
					</div>

					<div class="text-center">
						<span class="txt1">
						</span>

						<a href="#" class="txt2 hov1">
						</a>
					</div>
				</form>
			</div>
		</div>
	</div>


        </div>
    </form>
    <!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="js/main1.js"></script>
</body>
</html>

