window.addEventListener("load", function () {
  $.ajax({
    type: "POST",
    url: "../function/admin/etudiant/etudiant_charge.jsp",
    success: function (result) {
      document.getElementById("data_load").innerHTML = result;
    },
  });
});

$("#btn_search_etud").click(function () {
  var cin = document.getElementById("cin").value;
  var prenom = document.getElementById("prenom").value;
  var nom = document.getElementById("nom").value;
  $.ajax({
    type: "POST",
    url: "../function/admin/etudiant/etudiant_charge_search.jsp",
    data: { cin: cin, prenom: prenom, nom: nom },
    success: function (result) {
      console.log(result);
      document.getElementById("data_load").innerHTML = result;
    },
  });
});

$(document).on("click", "#btn-view", function () {
  console.log("btn clicked");
  id = $(this).attr("data-id1");
  console.log("id is" + id);
  document.getElementById("modal-data-etud").innerHTML =
    "<div>Chargement ... </div>";

  $.ajax({
    url: "../function/admin/etudiant/etudiant_charge_data-etud.jsp",
    method: "post",
    data: { id: id },
    success: function (data) {
      document.getElementById("modal-data-etud").innerHTML = data;
    },
  });
});

$(document).on("click", "#btn-delete", function () {
  console.log("btn clicked");
  id = $(this).attr("data-id2");
  console.log("id is " + id);

  $.ajax({
    url: "../function/admin/etudiant/etudiant_delete_data-etud.jsp",
    method: "post",
    data: { id: id },
    success: function (result) {
      console.log(result);
      location.reload();
    },
  });
});

$("#add_etud").click(function () {
  var nom = document.getElementById("nom-etud").value;
  var prenom = document.getElementById("prenom-etud").value;
  var email = document.getElementById("email-etud").value;
  var niv = document.getElementById("niv-etud").value;
  var spec = document.getElementById("spec-etud").value;
  var univ = document.getElementById("univ-etud").value;
  var cin = document.getElementById("cin-etud").value;
  var tel = document.getElementById("tel-etud").value;
  $.ajax({
    type: "POST",
    url: "../function/admin/etudiant/add_etud.jsp",
    data: {
      nom: nom,
      prenom: prenom,
      email: email,
      cin: cin,
      tel: tel,
      niv: niv,
      spec: spec,
      univ: univ,
    },
    success: function (result) {
      //debugger;
      console.log(result);
      location.reload();
    },
  });
});
