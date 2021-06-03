
    if (localStorage.getItem("login") === null){
        window.location.href = "../index.html";
    }
    if (localStorage.getItem("type") != 1 ){
        switch(parseInt(localStorage.getItem("type"))){
            case 0 : window.location.href = "../admin/"; break ;
            case 2 : window.location.href = "../enseignant/"; break ;
            case 3 : window.location.href = "../Etudiant/"; break ;
        
        }
    }



