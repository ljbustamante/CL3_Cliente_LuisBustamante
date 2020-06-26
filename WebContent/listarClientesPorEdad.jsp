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




<title>Medicamentos</title>
<style>
.modal-header, h4, .close {
	background-color: #286090;
	color: white !important;
	text-align: center;
	font-size: 20px;
}

.btn-warning, .btn-info {
	width: 100px;
}

.btn-danger, .btn-primary {
	width: 160px;
}
</style>
</head>
<body>
	<div class="container">
		<h3 align="center">Lista de Clientes</h3>
		Edad mínima: <input type="text" name="minimo" id="minimo" size="5" />
		Edad máxima: <input type="text" name="maximo" id="maximo" size="5" />
		<button type="button" class="btn btn-primary" id="consultar">Consultar</button>&nbsp;&nbsp;
		<a href="guardarCliente.jsp" class="btn btn-success" id="nuevo">Nuevo cliente</a>
		<br /><br />
		<div>
			<table id="id_table" class="table table-striped table-bordered">
				<thead>
					<tr>
						<th>Id</th>
						<th>Nombre</th>
						<th>Apellido</th>
						<th>DNI</th>
						<th>Edad</th>
					</tr>
				</thead>
				<tbody>

				</tbody>
			</table>

		</div>
	</div>

	<script type="text/javascript">
		$("#consultar").click(
			function() {

				$("#id_table tbody").empty();
				$.getJSON("listarClientesPorEdad", {
					minimo : $("#minimo").val(),
					maximo : $("#maximo").val()
				}, function(response) {

					$.each(response.listaClientes, function(index, item) {

						$("#id_table").append(
								"<tr><td>" + item.idCliente + "</td>" + "<td>"
										+ item.nombre + "</td>" + "<td>"
										+ item.apellido + "</td>" + "<td>"
										+ item.dni + "</td>" + "<td>"
										+ item.edad + "</td></tr>");
					});
				});

			}
		)
	</script>


</body>
</html>












