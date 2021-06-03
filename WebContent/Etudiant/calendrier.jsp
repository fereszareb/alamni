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
    <title>Calendrier</title>
        <script src="../js/check_etudiant.js"></script>
    <style>
        table td {
            padding-top: 0 !important;
            padding-bottom: 5px !important;
        }
        .record{
            color: red;
            font-size: 10px;
        }
        .statut-matiere{
            font-size: 12px;
            width: 60px;
            height: 22px;
            padding: 2px;
            border-radius: 4px;
            margin: auto;
            margin-right: 0;
            color: white;
            font-weight: 600;
        }
        .encour{
            background-color: rgb(220, 4, 4);
        }
        .annuler{
            background-color: rgb(174, 174, 174);
        }

        .Blink {
            animation: blinker 1s cubic-bezier(.5, 0, 1, 1) infinite alternate;  
        }
        @keyframes blinker {  
            from { opacity: 1; }
            to { opacity: 0; }
        }
        .fw-bold{
            margin: 10px 0 10px 0;
        }
        .c-none{
            color: white !important;
        }
        .card-body h5{
            color: gray ;
        }
        .card{
            border: 1px solid #f8c200 ;
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
                <a href="cours.jsp" class="card text-decoration-none">
                    <div class="card-body">
                        <h5>cours</h5>
                    </div>
                </a>
            </div>
            <div class="col-12 col-lg-3 col-md-6 mb-2">
                <a href="travail.jsp" class="card text-decoration-none">
                    <div class="card-body">
                        <h5>Travail demandé</h5>
                    </div>
                </a>
            </div>
            <div class="col-12 col-lg-3 col-md-6 mb-2">
                <a href="note.jsp" class="card text-decoration-none">
                    <div class="card-body">
                        <h5>Mes notes</h5>
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
            <div class="row">
                <div class="col-12 col-md-12">
                    <h3 class="fw-bold">LGLSI_2C</h3>
                    <div class="table-responsive">
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th scope="col"></th>
                                    <th scope="col">Lundi</th>
                                    <th scope="col">Mardi</th>
                                    <th scope="col">Mercredi</th>
                                    <th scope="col">Jeudi</th>
                                    <th scope="col">Vendredi</th>
                                    <th scope="col">Samedi</th>
                                </tr>
                            </thead>

                            <tbody id="data_load">

                                <tr>
                                    <th scope="row">08:30 - 10:00</th>
                                    <td align="center" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
                                        <div class="text-end">
                                            <b class="text-danger c-none">&#11044;</b>
                                        </div>
                                        <h5></h5>
                                        <p class="statut-matiere"> </p>
                                    </td>

                                    <td align="center" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
                                        <div class="text-end">
                                            <b class="text-danger  ">&#11044;</b>
                                        </div>
                                        <h5>ISTQB</h5>
                                        <p class="statut-matiere"></p>
                                    </td>

                                    <td align="center" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
                                        <div class="text-end">
                                            <b class="text-danger   c-none">&#11044;</b>
                                        </div>
                                        <h5>Tech Prog Web</h5>
                                        <p class="statut-matiere"> </p>
                                    </td>
                                    <td align="center" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
                                        <div class="text-end">
                                            <b class="text-danger   c-none">&#11044;</b>
                                        </div>
                                        <h5>Projet fédéré</h5>
                                        <p class="statut-matiere"> </p>
                                    </td>

                                    <td align="center" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
                                        <div class="text-end">
                                            <b class="text-danger   c-none">&#11044;</b>
                                        </div>
                                        <h5>Admin BD</h5>
                                        <p class="statut-matiere"> </p>
                                    </td>
                                    <td align="center">
                                        <div class="text-end">
                                            <b class="text-danger   c-none">&#11044;</b>
                                        </div>
                                        <h5>ISTQB</h5>
                                        <p class="statut-matiere"> </p>
                                    </td>
                                </tr>


                                <tr>
                                    <th scope="row">10:15 - 11:45</th>
                                    <td align="center" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
                                        <div class="text-end">
                                            <b class="text-danger   c-none">&#11044;</b>
                                        </div>
                                        <h5>Tech.Ind.Multimedia</h5>
                                        <p class="statut-matiere"> </p>
                                    </td>

                                    <td align="center" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
                                        <div class="text-end">
                                            <b class="text-danger  Blink">&#11044;</b>
                                        </div>
                                        <h5>Mini projet JEE</h5>
                                        <p class="encour statut-matiere">En cour</p>
                                    </td>

                                    <td align="center" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
                                        <div class="text-end">
                                            <b class="text-danger   c-none">&#11044;</b>
                                        </div>
                                        <h5>Droit informatique</h5>
                                        <p class="statut-matiere"> </p>
                                    </td>
                                    <td align="center" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
                                        <div class="text-end">
                                            <b class="text-danger   c-none">&#11044;</b>
                                        </div>
                                        <h5>Projet fédéré</h5>
                                        <p class="statut-matiere"> </p>
                                    </td>

                                    <td align="center" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
                                        <div class="text-end">
                                            <b class="text-danger c-none">&#11044;</b>
                                        </div>
                                        <h5>Admin BD</h5>
                                        <p class="statut-matiere"> </p>
                                    </td>
                                    <td align="center" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
                                        <div class="text-end">
                                            <b class="text-danger   c-none">&#11044;</b>
                                        </div>
                                        <h5>ISTQB</h5>
                                        <p class="annuler statut-matiere">Annuler</p>
                                    </td>
                                </tr>



                                <tr class="table-secondary">
                                    <th scope="row"></th>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                </tr>



                                <tr>
                                    <th scope="row">13:00 - 14:30</th>
                                    <td align="center" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
                                        <div class="text-end">
                                            <b class="text-danger   c-none">&#11044;</b>
                                        </div>
                                        <h5>Compilation</h5>
                                        <p class="statut-matiere"> </p>
                                    </td>

                                    <td align="center" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
                                        <div class="text-end">
                                            <b class="text-danger   c-none">&#11044;</b>
                                        </div>
                                        <h5>Fondements I.A</h5>
                                        <p class="statut-matiere"> </p>
                                    </td>

                                    <td align="center" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
                                        <div class="text-end">
                                            <b class="text-danger   c-none">&#11044;</b>
                                        </div>
                                        <h5>Datawarehouse</h5>
                                        <p class="statut-matiere"> </p>
                                    </td>
                                    <td align="center">
                                        <div class="text-end">
                                            <b class="text-danger   c-none">&#11044;</b>
                                        </div>
                                        <h5></h5>
                                        <p class="statut-matiere"> </p>
                                    </td>

                                    <td align="center" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
                                        <div class="text-end">
                                            <b class="text-danger c-none ">&#11044;</b>
                                        </div>
                                        <h5>Mini Projet JEE</h5>
                                        <p class="statut-matiere"> </p>
                                    </td>
                                    <td align="center">
                                        <div class="text-end">
                                            <b class="text-danger   c-none">&#11044;</b>
                                        </div>
                                        <h5></h5>
                                        <p class="statut-matiere"> </p>
                                    </td>
                                </tr>



                                <tr>
                                    <th scope="row">14:45 - 16:15</th>
                                    <td align="center" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
                                        <div class="text-end">
                                            <b class="text-danger c-none">&#11044;</b>
                                        </div>
                                        <h5>Anglais 4</h5>
                                        <p class="statut-matiere"> </p>
                                    </td>

                                    <td align="center" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
                                        <div class="text-end">
                                            <b class="text-danger   c-none">&#11044;</b>
                                        </div>
                                        <h5>Compilation</h5>
                                        <p class="statut-matiere"> </p>
                                    </td>

                                    <td align="center" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
                                        <div class="text-end">
                                            <b class="text-danger   c-none">&#11044;</b>
                                        </div>
                                        <h5>Compilation</h5>
                                        <p class="statut-matiere"> </p>
                                    </td>
                                    <td align="center" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
                                        <div class="text-end">
                                            <b class="text-danger   c-none">&#11044;</b>
                                        </div>
                                        <h5>Mini projet JEE</h5>
                                        <p class="statut-matiere"> </p>
                                    </td>

                                    <td align="center" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
                                        <div class="text-end">
                                            <b class="text-danger   c-none">&#11044;</b>
                                        </div>
                                        <h5>Fondements I.A</h5>
                                        <p class="statut-matiere"> </p>
                                    </td>
                                    <td align="center">
                                        <div class="text-end">
                                            <b class="text-danger   c-none">&#11044;</b>
                                        </div>
                                        <h5></h5>
                                        <p class="statut-matiere"> </p>
                                    </td>
                                </tr>




                                <tr>
                                    <th scope="row">16:30 - 18:00</th>
                                    <td align="center"></td>
                                    <td align="center"></td>
                                    <td align="center"></td>
                                    <td align="center"></td>
                                    <td align="center"></td>
                                    <td align="center"></td>
                                </tr>
                            </tbody>

                        </table>
                    </div>
                </div>
            </div>
        </div>






    <!-- Button trigger modal -->


    <!-- Modal -->
    <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
        aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="staticBackdropLabel">Info</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <p id="nm"> Matiére : Mini Projet JEE</p>  
                   
                   
                    <p id="H">Horaire : 10:15 => 11:45 </p>
                    <p id="prof">Enseignant(e) : Foulen fouleni </p>
                    <p id="classe">Classe : LGLSI_2C</p>
                    <p id="meet">Lien Meet : <a href="https://meet.google.com/nsx-nsqd-erp" target="_bank">https://meet.google.com/nsx-nsqd-erp</a></p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Fermer</button>
                </div>
            </div>
        </div>
    </div>
    
    <script src="../js/etudiant/calendrier.js"></script>
    <script src="../js/deconn.js"></script>
</body>

</html>