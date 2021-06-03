
    if (localStorage.getItem("login") === null){
        window.location.href = "../index.html";
    }
    if (localStorage.getItem("type") != 3 ){
        switch(parseInt(localStorage.getItem("type"))){
            case 1 : window.location.href = "../universite/"; break ;
            case 2 : window.location.href = "../enseignant/"; break ;
            case 0 : window.location.href = "../admin/"; break ;
        
        }
    }



