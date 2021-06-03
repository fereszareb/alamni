
    if (localStorage.getItem("login") === null){
        window.location.href = "../index.html";
    }
    if (localStorage.getItem("type") != 2 ){
        switch(parseInt(localStorage.getItem("type"))){
            case 1 : window.location.href = "../universite/"; break ;
            case 0 : window.location.href = "../admin/"; break ;
            case 3 : window.location.href = "../Etudiant/"; break ;
        
        }
    }



