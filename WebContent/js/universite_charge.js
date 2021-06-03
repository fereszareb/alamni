window.addEventListener("load", function () {
  $.ajax({
    type: "POST",
    url: "../function/admin/universite/universite_charge.jsp",
    success: function (result) {
      document.getElementById("data_load").innerHTML = result;
    },
  });
});

$("#add_univ").click(function () {
  var nom = document.getElementById("nom-univ").value;
  var email = document.getElementById("email-univ").value;
  var adresse = document.getElementById("adr-univ").value;
  var lien = document.getElementById("lien-univ").value;
  var lienpic = document.getElementById("lien-pic-univ").value;
  console.log({
    nom: nom,
    email: email,
    adresse: adresse,
    lien: lien,
    lienpic: lienpic,
  });
  $.ajax({
    type: "POST",
    url: "../function/admin/universite/add_univ.jsp",
    data: {
      nom: nom,
      email: email,
      adresse: adresse,
      lien: lien,
      lienpic: lienpic,
    },
    success: function (result) {
      //debugger;
      console.log(result);
      //location.reload();
    },
  });
});

$(document).on("click", "#btn-view", function () {
  console.log("btn clicked");
  id = $(this).attr("data-id1");
  console.log("id is " + id);
  document.getElementById("modal-data-univ").innerHTML =
    "<div>Chargement ... </div>";

  $.ajax({
    url: "../function/admin/universite/universite_charge_data-univ.jsp",
    method: "post",
    data: { id: id },
    success: function (data) {
      document.getElementById("modal-data-univ").innerHTML = data;
    },
  });
});

$(document).on("click", "#btn-delete", function () {
  console.log("btn clicked");
  id = $(this).attr("data-id2");
  console.log("id is " + id);

  $.ajax({
    url: "../function/admin/universite/universite_delete_data-univ.jsp",
    method: "post",
    data: { id: id },
    success: function (result) {
      location.reload();
      console.log(result);
    },
  });
});
