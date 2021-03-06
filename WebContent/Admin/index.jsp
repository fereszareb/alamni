<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<!doctype html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Hugo 0.80.0">
<title>Dashboard</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl"
	crossorigin="anonymous">

<link rel="stylesheet" href="../fontawesome/all.css">
<script src="../js/check_admin.js"></script>

<style>
.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	user-select: none;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}

body {
	font-size: .875rem;
}

.feather {
	width: 16px !important;
	height: 16px;
	vertical-align: text-bottom;
}

.sidebar {
	position: fixed;
	top: 0;
	bottom: 0;
	left: 0;
	z-index: 100;
	padding: 48px 0 0;
	box-shadow: inset -1px 0 0 rgba(0, 0, 0, .1);
}

@media ( max-width : 767.98px) {
	.sidebar {
		top: 5rem;
	}
	.nav-name-admin {
		display: none;
	}
}

.sidebar-sticky {
	position: relative;
	top: 0;
	height: calc(100vh - 48px);
	padding-top: .5rem;
	overflow-x: hidden;
	overflow-y: auto;
}

.sidebar .nav-link {
	font-weight: 500;
	color: #333;
}

.sidebar .nav-link .feather {
	margin-right: 4px;
	color: #727272;
}
 .stat-dashboard{
	 color : #6c6c6c;
 }
 .stat-dashboard h4{
	 font-weight : bold ;
 }
 .icon-stat-dashboard {
	color: #ffc107;
}
.sidebar .nav-link.active{
  color: #ffc107;
}
.sidebar .nav-link:hover .feather, .sidebar .nav-link.active .feather {
	color: inherit;
}

.sidebar-heading {
	font-size: .75rem;
	text-transform: uppercase;
}

.navbar-brand {
	padding-top: .75rem;
	padding-bottom: .75rem;
	font-size: 1rem;
	background-color: rgba(0, 0, 0, .25);
	box-shadow: inset -1px 0 0 rgba(0, 0, 0, .25);
}

.navbar .navbar-toggler {
	top: .25rem;
	right: 1rem;
}

.navbar .form-control {
	padding: .75rem 1rem;
	border-width: 0;
	border-radius: 0;
}

.form-control-dark {
	color: #fff;
	background-color: rgba(255, 255, 255, .1);
	border-color: rgba(255, 255, 255, .1);
}

.form-control-dark:focus {
	border-color: transparent;
	box-shadow: 0 0 0 3px rgba(255, 255, 255, .25);
}

.icon-stat-dashboard {
	font-size: 48px;
}
</style>
</head>

<body>

	<header
		class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0 shadow">
		<a class="navbar-brand col-md-3 col-lg-2 me-0 px-5" href="#"> <img
			src="../picture/logo/logo-gold-white.svg" width="140">
		</a>
		<button class="navbar-toggler position-absolute d-md-none collapsed"
			type="button" data-bs-toggle="collapse" data-bs-target="#sidebarMenu"
			aria-controls="sidebarMenu" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<ul class="navbar-nav px-3 nav-name-admin">
			<li class="nav-item text-nowrap"><a class="nav-link" href="#">Zareb
					Feres</a></li>
		</ul>
	</header>

	<div class="container-fluid">
		<div class="row">
			<nav id="sidebarMenu"
				class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse">
				<div class="position-sticky pt-3">
					<ul class="nav flex-column">
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="index.jsp"> <i
								class="fas fa-tachometer-alt feather"></i> Dashboard
						</a></li>
						<li class="nav-item"><a class="nav-link"
							href="universite.jsp"> <i class="fas fa-university feather"></i>
								Universit??s
						</a></li>
						<li class="nav-item"><a class="nav-link"
							href="enseignant.jsp"> <i class="fas fa-user feather"></i>
								Enseignants
						</a></li>
						<li class="nav-item"><a class="nav-link" href="etudiants.jsp">
								<i class="fas fa-user-graduate feather"></i> Etudiants
						</a></li>
						<li class="nav-item"><a class="nav-link" href="admin.jsp">
								<i class="fas fa-user-shield feather"></i> Admins
						</a></li>
						<li class="nav-item"><a class="nav-link"
							href="parametre.jsp"> <i class="fas fa-cog feather"></i>
								Param??tres
						</a></li>
						<li class="nav-item"><a class="nav-link" id="deconn"> <i
								class="fas fa-sign-out-alt feather"></i> D??connexion
						</a></li>
					</ul>
				</div>
			</nav>

			<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4 pt-3">

				<nav aria-label="breadcrumb">
					<ol class="breadcrumb">
						<li class="breadcrumb-item"><a href="index.jsp">Admin</a></li>
						<li class="breadcrumb-item active" aria-current="page">Dashboard</li>
					</ol>
				</nav>
				<div class="row stat-dashboard" id="dashboard_nbrs">

				</div>
				<div class="row">
					<div class="col-lg-8 col-md-6 mb-2">
						<div class="card">
							<div class="card-body">
								<p>Nombre des ??tudiants actif par mois</p>
								<canvas id="Etudient_actif_stat"></canvas>
							</div>
						</div>
					</div>
					<div class="col-lg-4 col-md-6 mb-2">
						<div class="card">
							<div class="card-body">
								<p>Nombre des seances en ligne</p>
								<canvas id="Etudient_actif_par_universite"></canvas>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-12 mb-2">
						<div class="card">
							<div class="card-body">
								<p>Liste des Universit??s</p>
								<div class="table-responsive">
									<table class="table table-striped table-sm">
										<thead>
											<tr>
												<th>Code</th>
												<th>universit??</th>
												<th>Nbr etudiants</th>
												<th>Nbr enseignants</th>
												<th>data</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>1,001</td>
												<td>random</td>
												<td>data</td>
												<td>placeholder</td>
												<td>text</td>
											</tr>
											<tr>
												<td>1,002</td>
												<td>placeholder</td>
												<td>irrelevant</td>
												<td>visual</td>
												<td>layout</td>
											</tr>
											<tr>
												<td>1,003</td>
												<td>data</td>
												<td>rich</td>
												<td>dashboard</td>
												<td>tabular</td>
											</tr>
											<tr>
												<td>1,003</td>
												<td>information</td>
												<td>placeholder</td>
												<td>illustrative</td>
												<td>data</td>
											</tr>
											<tr>
												<td>1,004</td>
												<td>text</td>
												<td>random</td>
												<td>layout</td>
												<td>dashboard</td>
											</tr>
											<tr>
												<td>1,005</td>
												<td>dashboard</td>
												<td>irrelevant</td>
												<td>text</td>
												<td>placeholder</td>
											</tr>
											<tr>
												<td>1,006</td>
												<td>dashboard</td>
												<td>illustrative</td>
												<td>rich</td>
												<td>data</td>
											</tr>
											<tr>
												<td>1,007</td>
												<td>placeholder</td>
												<td>tabular</td>
												<td>information</td>
												<td>irrelevant</td>
											</tr>
											<tr>
												<td>1,008</td>
												<td>random</td>
												<td>data</td>
												<td>placeholder</td>
												<td>text</td>
											</tr>
											<tr>
												<td>1,009</td>
												<td>placeholder</td>
												<td>irrelevant</td>
												<td>visual</td>
												<td>layout</td>
											</tr>
											<tr>
												<td>1,010</td>
												<td>data</td>
												<td>rich</td>
												<td>dashboard</td>
												<td>tabular</td>
											</tr>
											<tr>
												<td>1,011</td>
												<td>information</td>
												<td>placeholder</td>
												<td>illustrative</td>
												<td>data</td>
											</tr>
											<tr>
												<td>1,012</td>
												<td>text</td>
												<td>placeholder</td>
												<td>layout</td>
												<td>dashboard</td>
											</tr>
											<tr>
												<td>1,013</td>
												<td>dashboard</td>
												<td>irrelevant</td>
												<td>text</td>
												<td>visual</td>
											</tr>
											<tr>
												<td>1,014</td>
												<td>dashboard</td>
												<td>illustrative</td>
												<td>rich</td>
												<td>data</td>
											</tr>
											<tr>
												<td>1,015</td>
												<td>random</td>
												<td>tabular</td>
												<td>information</td>
												<td>text</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-md-6 mb-2">
						<div class="card">
							<div class="card-body">
								<p>Nombre des universit??s inscrits par ann??e</p>
								<canvas id="Enseignant_annee"></canvas>
							</div>
						</div>
					</div>
					<div class="col-md-6 mb-2">
						<div class="card">
							<div class="card-body">
								<p>Nombre des ??tudiants succes chaque ann??e</p>
								<canvas id="Etudiant_annee"></canvas>
							</div>
						</div>
					</div>
				</div>
				<br> <br>
			</main>
		</div>
	</div>





	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0"
		crossorigin="anonymous"></script>
	<script src="../fontawesome/all.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="../js/dashboard.js"></script>
	<script src="../js/deconn.js"></script>
</body>

</html>