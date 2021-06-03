window.addEventListener("load", function () {
    $.ajax({
      type: "POST",
      url: "../function/universite/matiere/matiere_charge.jsp",
      success: function (result) {
        document.getElementById("data_load").innerHTML = result;
      },
    });
    $.ajax({
      type: "POST",
      url: "../function/universite/matiere/selct.jsp",
      success: function (result) {
        document.getElementById("slect").innerHTML = result;
        console.log(result);
      },
    });

  });
  
  
  $(document).on("click", "#btn-delete", function () {
    console.log("btn clicked");
    id = $(this).attr("data-id2");
    console.log("id is " + id);
  
    $.ajax({
      url: "../function/universite/matiere/matiere_delete_data-ens.jsp",
      method: "post",
      data: { id: id },
      success: function (result) {
        location.reload();
      },
    });
  });
  
  $("#add_matiere").click(function () {
    var matiere = document.getElementById("matiere").value;
    var filiere = document.getElementById("filiere").value;
    $.ajax({
      type: "POST",
      url: "../function/universite/matiere/add_matiere.jsp",
      data: {
        matiere: matiere,
        filiere: filiere
      },
      success: function (result) {
        //debugger;
        console.log(result);
        location.reload();
      },
    });
  });
  