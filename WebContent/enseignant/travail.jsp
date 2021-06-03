<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="../fontawesome/all.css">
    <script src="../fontawesome/all.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="../js/check_enseignant.js"></script>
    <title>Travail</title>
    <style>
        .doc{
            width: 150px;
            padding: .25rem!important;

        }
        .doc .card{
            overflow: hidden;
            height: 35px;
            cursor: pointer;
        }
                .card-body h5{
            color: gray ;
        }
        .card{
            border: 1px solid #f8c200 ;
        }
        .btn-alamni{
            color: #fff;
            background: linear-gradient(90deg ,rgb(255, 94, 0), gold);
        }
        .w-200px{
            width: 200px;
            
        }
        .nav-pills .nav-link.active, .nav-pills .show>.nav-link{
            background: linear-gradient(90deg ,rgb(255, 94, 0), gold) !important;
        }
    </style>
</head>

<body>
    <div>
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container container-md-fluid">
                <a class="navbar-brand" href="#">
                    <img src="../picture/logo/logo-gold-white.svg" width="180" >
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <div class="navbar-nav me-auto mb-2 mb-lg-0"></div>

                    <div class="d-flex">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                            <li class="nav-item">
                                <img src="profile" class="rounded-circle nav-link me-3" width="32" height="32">
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                                    data-bs-toggle="dropdown" aria-expanded="false">Zareb Feres</a>
                                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <li><a class="dropdown-item" href="#">Mon profile</a></li>
                                    <li>
                                        <hr class="dropdown-divider">
                                    </li>
                                    <li><a class="dropdown-item" href="#">Signaler un probléme</a></li>
                                    <li><a class="dropdown-item" href="#">Contact</a></li>
                                    <li><a class="dropdown-item" id="deconn" >Déconnection</a></li>
                                </ul>
                            </li>
                            <li class="nav-item">
                                <p class="nav-link">N2 : 214578</p>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </nav>
    </div>
    <div class="container">
        <div class="row text-center mt-4">

            <div class="col-12 col-lg-3 col-md-6 mb-2 ">
                <a href="calendrier.jsp" class="card text-decoration-none">
                    <div class="card-body">
                        <h5>Calendrier</h5>
                    </div>
                </a>
            </div>
            <div class="col-12 col-lg-3 col-md-6 mb-2">
                <a href="cours.jsp" class="card text-decoration-none">
                    <div class="card-body">
                        <h5>Cours</h5>
                    </div>
                </a>
            </div>
            <div class="col-12 col-lg-3 col-md-6 mb-2">
                <a href="note.jsp" class="card text-decoration-none">
                    <div class="card-body">
                        <h5>notes</h5>
                    </div>
                </a>
            </div>
            <div class="col-12 col-lg-3 col-md-6 mb-2">
                <a href="profile.jsp" class="card text-decoration-none">
                    <div class="card-body">
                        <h5>Profile</h5>
                    </div>
                </a>
            </div>
        </div>
    </div>
        <div class="container">
            <div class="row mt-4">
                <div class="col-12">
                    <div class="card">
                        <div class="card-body">
                            <div class="d-flex align-items-start" id="data_load">

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>







  <!-- Modal -->
  <div class="modal fade" id="add" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">  Ajouter un Travail</h5>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">

                <div class="mb-3">
                    <textarea name="" id="contenu" cols="60" rows="10"></textarea>
                   
                </div>

        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
          <button type="button" class="btn btn-alamni">Ajouter</button>
        </div>
      </div>
    </div>
  </div>












        <script src="../js/enseignant/travail.js"></script>
        <script src="../js/deconn.js"></script>
</body>

</html>