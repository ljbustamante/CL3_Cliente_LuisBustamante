<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html lang="esS">
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">

<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/bootstrap-theme.min.css" rel="stylesheet">
<link href="css/bootstrapValidator.min.css" rel="stylesheet">

<link href="css/bootstrap-datepicker.css" rel="stylesheet">

<link href="css/dataTables.bootstrap.min.css" rel="stylesheet">
<link href="css/bootstrapValidator.min.css" rel="stylesheet">


<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/bootstrapValidator.min.js"></script>
<script type="text/javascript" src="js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="js/dataTables.bootstrap.min.js"></script>

<script type="text/javascript" src="js/bootstrap-datepicker.min.js"></script>


<script type="text/javascript" src="sweetalert/sweetalert.min.js"></script>


<title>Docente</title>
<style>
.modal-header, h4, .close {
	background-color: #286090;
	color: white !important;
	text-align: center;
	font-size: 20px;
}

.modal-header2, h4, .close {
	color: black !important;
	text-align: center;
	font-size: 20px;
}

.modal {
	text-align: center;
}

@media screen and (min-width: 768px) {
	.modal:before {
		display: inline-block;
		vertical-align: middle;
		content: " ";
		height: 100%;
	}
}

.modal-dialog {
	display: inline-block;
	text-align: left;
	vertical-align: middle;
}
</style>
</head>
<body>
	<c:if test="${sessionScope.MENSAJE!=null}">
		<div class="alert alert-success alert-dismissible">
			<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
			<strong>Mensaje : </strong>${sessionScope.MENSAJE}
		</div>
	</c:if>
	<c:remove var="MENSAJE" />

	<div class="container">
		<!-- INICIO DIV NUEVO -->
		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header" style="padding: 5px 20px">
				<h4 id="idMensaje">Registro de Cliente</h4>
			</div>
			<div class="modal-body" style="padding: 20px 10px;">
				<form id="id_registra" accept-charset="UTF-8" action="guardarCliente"
					class="form-horizontal" method="post" data-toggle="validator"
					role="form">
					<div class="panel-group" id="steps">
						<!-- Step 1 -->
						<div class="panel panel-default">
							<div class="panel-heading"
								style="text-align: center; font-size: 14px"></div>
							<div class="panel-body">
								<div class="form-group">
									<label class="col-lg-3 control-label" for="id_reg_nombre">Nombre</label>
									<div class="col-lg-5">
										<input class="form-control" name="cliente.nombre"
											placeholder="Ingrese el Nombre" />
									</div>
								</div>
								<div class="form-group">
									<label class="col-lg-3 control-label" for="id_reg_apellido">Apellido</label>
									<div class="col-lg-5">
										<input class="form-control" name="cliente.apellido"
											placeholder="Ingrese el Apellido" />
									</div>
								</div>
								<div class="form-group">
									<label class="col-lg-3 control-label" for="id_reg_dni">DNI</label>
									<div class="col-lg-5">
										<input class="form-control" name="cliente.dni"
											placeholder="Ingrese DNI" />
									</div>
								</div>
								
								<div class="form-group">
									<label class="col-lg-3 control-label" for="id_reg_edad">Edad</label>
									<div class="col-lg-5">
										<input class="form-control" name="cliente.edad"
											placeholder="Ingrese Edad" />
									</div>
								</div>

							</div>
							<div class="modal-footer"
								style="padding: 5px 20px; text-align: center">
								<button type="submit" class="btn btn-primary">Guardar</button>
								<a href="listarClientesPorEdad.jsp" class="btn btn-warning">Volver a listado</a>
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
		<!-- FIN DIV NUEVO -->
	</div>







	<script type="text/javascript">
		
	</script>


</body>
</html>












