window.addEventListener("load", function () {
    $.ajax({
      type: "POST",
      url: "../function/universite/classe/classe_charge.jsp",
      success: function (result) {
        document.getElementById("data_load").innerHTML = result;
      },
    });
    $.ajax({
      type: "POST",
      url: "../function/universite/classe/selct.jsp",
      success: function (result) {
        document.getElementById("slect").innerHTML = result;
      },
    });
  });
  
  $(document).on("click", "#btn-delete", function () {
    console.log("btn clicked");
    id = $(this).attr("data-id2");
  
    $.ajax({
      url: "../function/universite/classe/classe_delete_data-ens.jsp",
      method: "post",
      data: { id: id },
      success: function (result) {
        location.reload();
      },
    });
  });
  
  $("#add_ens").click(function () {
    var nom = document.getElementById("nom").value;
    var filiere = document.getElementById("filiere").value;
    $.ajax({
      type: "POST",
      url: "../function/universite/classe/add_classe.jsp",
      data: {
        nom: nom,
        filiere:filiere
      },
      success: function (result) {
        location.reload();
      },
    });
  });
  