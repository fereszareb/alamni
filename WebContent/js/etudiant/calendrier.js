window.addEventListener("load",function(){
    $.ajax({
        type:'POST',
        url: '../function/enseignant_charge.jsp',
        success: function (result) {
            document.getElementById("data_load").innerHTML = result ;
        }
    });
});


