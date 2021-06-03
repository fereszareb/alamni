
    if (localStorage.getItem("login") === null){
        window.location.href = "../index.html";
    }
    if (localStorage.getItem("type") != 0 ){
        switch(parseInt(localStorage.getItem("type"))){
            case 1 : window.location.href = "../universite/"; break ;
            case 2 : window.location.href = "../enseignant/"; break ;
            case 3 : window.location.href = "../Etudiant/"; break ;
        
        }
    }

