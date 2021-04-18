window.addEventListener("load",function(){
    $.ajax({
        type:'POST',
        url: '../function/enseignant_charge.jsp',
        success: function (result) {
            document.getElementById("data_load").innerHTML = result ;
        }
    });
})




$('#btn_search_ens').click(function() {
    var cin = document.getElementById("cin").value;
    var prenom = document.getElementById("prenom").value;
    var nom = document.getElementById("nom").value;
    $.ajax({
        type:'POST',
        url: '../function/enseignant_charge_search.jsp',
        data : {cin:cin,prenom:prenom,nom:nom},
        success: function (result) {
            console.log(result);
            document.getElementById("data_load").innerHTML = result ;
        }
    });
});

$(document).on('click','#btn-view',function()
{   console.log("btn clicked");
        id= $(this).attr('data-id1');
        console.log("id is"+ id);
        document.getElementById("modal-data-ens").innerHTML ='<div>Chargement ... </div>';

         $.ajax(
            {
                url: '../function/enseignant_charge_data-ens.jsp',
                method: 'post',
                data : {id:id},
                success: function(data)
                {
                    document.getElementById("modal-data-ens").innerHTML =data;
                }
            })
    
})