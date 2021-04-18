$('#add_univ').click(function() {
    var name_univ = document.getElementById("name-univ").value;
    var email_univ = document.getElementById("email-univ").value;
    var web_site_univ = document.getElementById("web-site-univ").value;
    $.ajax({
        type:'POST',
        url: '../function/add_univ.jsp',
        data : {name_univ:name_univ,email_univ:email_univ,web_site_univ:web_site_univ},
        success: function (result) {
            //debugger;
            console.log(result);
            document.getElementById("name-univ").value ='';
            document.getElementById("email-univ").value='';
            document.getElementById("web-site-univ").value='';
        }
    });
});