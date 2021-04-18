
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

<%@page import="java.sql.*"%>
<%
try {
Class.forName("com.mysql.jdbc.Driver");
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>

<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.80.0">
    <title>Universités</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="../fontawesome/all.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="../fontawesome/all.js"></script>
    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
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

@media (max-width: 767.98px) {
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

.sidebar .nav-link.active {
  color: #007bff;
}

.sidebar .nav-link:hover .feather,
.sidebar .nav-link.active .feather {
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

    </style>
  </head>
  <body>
    
<header class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0 shadow">
  <a class="navbar-brand col-md-3 col-lg-2 me-0 px-5" href="#">
    <img src="../picture/logo/logo-white.svg" width="140" >
  </a>
  <button class="navbar-toggler position-absolute d-md-none collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#sidebarMenu" aria-controls="sidebarMenu" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <ul class="navbar-nav px-3 nav-name-admin">
    <li class="nav-item text-nowrap">
      <a class="nav-link" href="#">Zareb Feres</a>
    </li>
  </ul>
</header>

<div class="container-fluid">
  <div class="row">
    <nav id="sidebarMenu" class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse">
      <div class="position-sticky pt-3">
        <ul class="nav flex-column">
          <li class="nav-item">
            <a class="nav-link" aria-current="page" href="index.html">
              <i class="fas fa-tachometer-alt feather"></i>
              Dashboard
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link active" href="universite.html">
              <i class="fas fa-university feather"></i>
              Universités
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="enseignant.html">
              <i class="fas fa-user feather"></i>
              Enseignants
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="etudiants.html">
              <i class="fas fa-user-graduate feather"></i>
              Etudiants
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="admin.html">
              <i class="fas fa-user-shield feather"></i>
              Admins
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="parametre.html">
              <i class="fas fa-cog feather"></i>
              Paramétres
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">
              <i class="fas fa-sign-out-alt feather"></i>
              Déconnexion 
            </a>
          </li>
        </ul>
      </div>
    </nav>

    <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4 pt-3">
      <nav aria-label="breadcrumb">
        <ol class="breadcrumb mb-0">
          <li class="breadcrumb-item"><a href="index.html">Admin</a></li>
          <li class="breadcrumb-item active" aria-current="page">Universites</li>
        </ol>
      </nav>

      <div class="col-12 text-end mb-3">
        <div href="#" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#add-univ">Ajouter une Univercité</div>
      </div>
      <div class="container align-items-center">


<%
try{
connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/alamni","root","");
statement=connection.createStatement();
String sql ="select * from universite";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>

        <div class="card col-8 m-auto mb-2">
          <div class="card-body">
            <div class="row">
              <div class="col-4">
                <img class="rounded" src="<%=resultSet.getString("link_pic") %>" height="180" width="100%">
              </div>
              <div class="col-8">
                <h5 class="card-title"><%=resultSet.getString("nom") %></h5>
                <p class="card-text"><%=resultSet.getString("nbr_etudiants") %> étudiants</p>
                <p class="card-text"><%=resultSet.getString("nbr_ens") %> enseignants</p>
                <p class="card-text"><%=resultSet.getString("link") %></p>
                <div class="text-end">
                  <div class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#consulte-univ">Voir plus</div>
                </div>
              </div>
            </div>
          </div>
        </div>

<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>






      </div>
    </main>
  </div>
</div>




<!-- Modal ajouter universite -->
<div class="modal fade" id="add-univ" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Ajouter Univercité</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <form id="add_univ_form">
          <div class="mb-3">
            <label for="exampleInputEmail1" class="form-label">Nom Univercité</label>
            <input type="text" class="form-control" id="name-univ">
          </div>
          <div class="mb-3">
            <label for="exampleInputEmail1" class="form-label">Email université</label>
            <input type="email" class="form-control" id="email-univ">
          </div>
          <div class="mb-3">
            <label for="exampleInputEmail1" class="form-label">Site Web</label>
            <input type="text" class="form-control" id="web-site-univ">
          </div>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Annuler</button>
        <button type="button" class="btn btn-primary" id="add_univ" data-bs-toggle="modal">Ajouter</button>
      </div>
    </div>
  </div>
</div>








<!-- Modal entrer mots de passe -->
<div class="modal fade" id="valid-password" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLabel">Modal title</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        ...
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Understood</button>
      </div>
    </div>
  </div>
</div>








<!-- Modal consulter universite -->
<div class="modal fade" id="consulte-univ" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLabel">ISTIC</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <p>L’ISTIC est une institution universitaire publique créée par les décrets n° 2011-1010 du 24 août 2011 et n° 1645 de 2012, sous tutelle de l’Université de Carthage. Implanté dans le site du park de Borj cedria, l'institut dispense une formation de haut niveau dans les domaines de technologies de l’information et de la communication, s’inscrivant dans le schéma LMD (licence/master/doctorat).

          Avec une capacité d’accueil prévue de 1460 étudiants répartis sur des formations de Licence, Master et Doctorat, notre établissement offre des conditions d’études optimales aux jeunes envisageant d’entamer une formation supérieure.
          
          L'ISTIC dispose, pour assurer ses enseignements, d'une équipe pédagogique qui associe des universitaires (enseignants, enseignants-chercheurs) et des professionnels, cadres d'entreprises, ainsi que des équipements technologiques pédagogiques de pointe installés dans des locaux agréables, de construction moderne.
          
          Elle forme, des cadres qui contribuent au développement des technologies de l’information et de la communication TIC dans des entreprises des secteurs de l’industrie , des services et de la recherche.
          
          Les formations à l'ISTIC sont basée sur un enseignement pluridisciplinaire mobilisant les ressources d'un large champ de spécialités, dans le domaine de l'informatique, de l'électronique et des Télécommunication, chacune d'entre elles faisant l'objet d'une organisation au sein d'un département. Les formations de l'Institut sont de deux types :
          
          Des formation fondamentales en sciences de l'Informatique, et des Télécommunications.
          Des formations appliquées en Informatique Industrielle, Automatisme et en Réseaux Telecom.
          La formation de notre établissement a pour objectif de présenter un large éventail de débouchés lors de l'entrée dans la vie active permettant donc de choisir entre une insertion professionnelle rapide et une poursuite d'études en Master et Doctorat non seulement dans le domaine des TIC mais aussi dans le domaine des sciences de l’ingénieur relevant de la robotique, de l’automatique, de l’informatique industrielle, des réseaux de télécommunication, des systèmes embarqués et mobiles, des sciences cognitives, des technologies Web, de l’intelligence artificielle et du traitement de l’information.
          
          Les diplômés de l'ISTIC seront ainsi préparer, à exercer, en recherche et ou en développement, dans les métiers de la robotique, la téléphonie mobile, les applications mobiles, le développement d’applications WEB et jeux vidéo, le commerce électronique, l’administration des systèmes et réseaux, la gestion de multiple bases de données, Big Data, l’internet of things, e-réputation. La formation à l'ISTIC vise à former des cadres capables de Construire un cursus personnalisé en fonction de leurs aspirations professionnelles et personnelles, répondant aux exigences du marché national et international, tout en gardant un référentiel métier à jour avec les avancées technologiques du domaine des TIC.</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Fermer</button>
      </div>
    </div>
  </div>
</div>
<script src="../js/add_more_univ.js"></script>
</body>
</html>
