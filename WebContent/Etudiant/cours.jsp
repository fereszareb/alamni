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
    <title>Cours</title>
    <script src="../js/check_etudiant.js"></script>
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
            <div class="row mt-4">
                <div class="col-12">
                    <div class="card">
                        <div class="card-body">
                            <div class="d-flex align-items-start">
                                <div class="nav flex-column nav-pills me-3 col-2" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                                  <button class="nav-link active" id="v-pills-home-tab" data-bs-toggle="pill" data-bs-target="#v11" type="button" role="tab" aria-controls="v-pills-home" aria-selected="true">Tech Prog Web</button>
                                  <button class="nav-link" id="v-pills-profile-tab" data-bs-toggle="pill" data-bs-target="#v12" type="button" role="tab" aria-controls="v-pills-profile" aria-selected="false">Anglais</button>
                                  <button class="nav-link" id="v-pills-messages-tab" data-bs-toggle="pill" data-bs-target="#v13" type="button" role="tab" aria-controls="v-pills-messages" aria-selected="false">Projet fédéré</button>
                                  <button class="nav-link" id="v-pills-settings-tab" data-bs-toggle="pill" data-bs-target="#v14" type="button" role="tab" aria-controls="v-pills-settings" aria-selected="false">Prog Web JEE</button>
                                  <button class="nav-link" id="v-pills-home-tab" data-bs-toggle="pill" data-bs-target="#v15" type="button" role="tab" aria-controls="v-pills-home" aria-selected="true">Intelligence artificiel</button>
                                  <button class="nav-link" id="v-pills-profile-tab" data-bs-toggle="pill" data-bs-target="#v16" type="button" role="tab" aria-controls="v-pills-profile" aria-selected="false">Datawarehouse</button>
                                  <button class="nav-link" id="v-pills-messages-tab" data-bs-toggle="pill" data-bs-target="#v17" type="button" role="tab" aria-controls="v-pills-messages" aria-selected="false">ISTQB</button>
                                  <button class="nav-link" id="v-pills-settings-tab" data-bs-toggle="pill" data-bs-target="#v18" type="button" role="tab" aria-controls="v-pills-settings" aria-selected="false">Big Data</button>
                                </div>
                                <div class="tab-content col-10" id="v-pills-tabContent">
                                  <div class="tab-pane fade show active" id="v11" role="tabpanel" aria-labelledby="v-pills-home-tab">
                                    
                                        <div class="row">
                                            <div class="col-12">
                                                <div class="card m-2">
                                                    <div class="row p-2 px-3">
                                                        <div class="col-7"><p>Samir Salah</p></div>
                                                        <div class="col-5 text-end"><small>Il ya 49 mintes</small></div>
                                                    </div>
                                                    <div class="row px-4"><p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Dolorum voluptates, saepe excepturi reprehenderit consequatur eaque vel aut deserunt non rerum quis pariatur, incidunt ab mollitia. Exercitationem assumenda dolor voluptatem eligendi.</p></div>
                                                    <div class="row px-3 pb-1">
                                                        <div class="doc">
                                                            <div class="card p-1">TP_AJA_JSON.pdf</div>
                                                        </div>
                                                        <div class="doc">
                                                            <div class="card p-1">Chapitre_3.pdf</div>
                                                        </div>
                                                        <div class="doc">
                                                            <div class="card p-1">travail.rar</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-12">
                                                <div class="card m-2">
                                                    <div class="row p-2 px-3">
                                                        <div class="col-7"><p>Samir Salah</p></div>
                                                        <div class="col-5 text-end"><small>Il ya 5 heures</small></div>
                                                    </div>
                                                    <div class="row px-4"><p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Dolorum voluptates, saepe excepturi reprehenderit consequatur eaque vel aut deserunt non rerum quis pariatur, incidunt ab mollitia. Exercitationem assumenda dolor voluptatem eligendi.</p></div>
                                                    <div class="row px-3 pb-1">
                                                        <div class="doc">
                                                            <div class="card p-1">TP_AJA_JSON.pdf</div>
                                                        </div>
                                                        <div class="doc">
                                                            <div class="card p-1">Chapitre_3.pdf</div>
                                                        </div>
                                                        <div class="doc">
                                                            <div class="card p-1">travail.rar</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                                                                <div class="row">
                                            <div class="col-12">
                                                <div class="card m-2">
                                                    <div class="row p-2 px-3">
                                                        <div class="col-7"><p>Samir Salah</p></div>
                                                        <div class="col-5 text-end"><small>Il ya 8 heures</small></div>
                                                    </div>
                                                    <div class="row px-4"><p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Dolorum voluptates, saepe excepturi reprehenderit consequatur eaque vel aut deserunt non rerum quis pariatur, incidunt ab mollitia. Exercitationem assumenda dolor voluptatem eligendi.</p></div>
                                                    <div class="row px-3 pb-1">
                                                        <div class="doc">
                                                            <div class="card p-1">TP_AJA_JSON.pdf</div>
                                                        </div>
                                                        <div class="doc">
                                                            <div class="card p-1">Chapitre_3.pdf</div>
                                                        </div>
                                                        <div class="doc">
                                                            <div class="card p-1">travail.rar</div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        
                                  </div>
                                  <div class="tab-pane fade" id="v12" role="tabpanel" aria-labelledby="v-pills-profile-tab">Vide</div>
                                  <div class="tab-pane fade" id="v13" role="tabpanel" aria-labelledby="v-pills-messages-tab">Vide</div>
                                  <div class="tab-pane fade" id="v15" role="tabpanel" aria-labelledby="v-pills-settings-tab">Vide</div>
                                  <div class="tab-pane fade" id="v16" role="tabpanel" aria-labelledby="v-pills-settings-tab">Vide</div>
                                  <div class="tab-pane fade" id="v17" role="tabpanel" aria-labelledby="v-pills-settings-tab">
                                  <div class="row">
                                            <div class="col-12">
                                                <div class="card m-2">
                                                    <div class="row p-2 px-3">
                                                        <div class="col-7"><p>Amira Jbeli</p></div>
                                                        <div class="col-5 text-end"><small>Il ya 2 jours</small></div>
                                                    </div>
                                                    <div class="row px-4"><p>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Dolorum voluptates, saepe excepturi reprehenderit consequatur eaque vel aut deserunt non rerum quis pariatur, incidunt ab mollitia. Exercitationem assumenda dolor voluptatem eligendi. Lorem</p></div>
                                                    <div class="row px-3 pb-1">
                                                        <div class="doc">
                                                            <div class="card p-1">Chapitre_5.pdf</div>
                                                        </div>
                                                        
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                  </div>
                                  <div class="tab-pane fade" id="v18" role="tabpanel" aria-labelledby="v-pills-settings-tab">Vide</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script src="../js/etudiant/cour.js"></script>
        <script src="../js/deconn.js"></script>
</body>

</html>