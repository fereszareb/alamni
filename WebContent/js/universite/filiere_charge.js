window.addEventListener("load", function () {
    $.ajax({
      type: "POST",
      url: "../function/universite/filiere/filiere_charge.jsp",
      success: function (result) {
        document.getElementById("data_load").innerHTML = result;
      },
    });
  });
  
  
  $(document).on("click", "#btn-delete", function () {
    console.log("btn clicked");
    id = $(this).attr("data-id2");
    console.log("id is " + id);
  
    $.ajax({
      url: "../function/universite/filiere/filiere_delete_data-ens.jsp",
      method: "post",
      data: { id: id },
      success: function (result) {
        location.reload();
        console.log(result);
      },
    });
  });
  
  $("#add_ens").click(function () {
    var nom = document.getElementById("nom").value;
    $.ajax({
      type: "POST",
      url: "../function/universite/filiere/add_filiere.jsp",
      data: {nom: nom},
      success: function (result) {
        console.log(result);
        location.reload();
      },
    });
  });
  