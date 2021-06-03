window.addEventListener("load", function () {
  $.ajax({
    type: "POST",
    url: "../function/admin/admin/admin_charge.jsp",
    success: function (result) {
      document.getElementById("data_load").innerHTML = result;
    },
  });
});

$(document).on("click", "#btn-view", function () {
  console.log("btn clicked");
  id = $(this).attr("data-id1");
  console.log("id is" + id);
  document.getElementById("modal-data-adm").innerHTML =
    "<div>Chargement ... </div>";

  $.ajax({
    url: "../function/admin/admin/admin_charge_data-adm.jsp",
    method: "post",
    data: { id: id },
    success: function (data) {
      document.getElementById("modal-data-adm").innerHTML = data;
    },
  });
});

$(document).on("click", "#btn-delete", function () {
  console.log("btn clicked");
  id = $(this).attr("data-id2");
  console.log("id is " + id);

  $.ajax({
    url: "../function/admin/admin/admin_delete_data-adm.jsp",
    method: "post",
    data: { id: id },
    success: function (result) {
      console.log(result);
      location.reload();
    },
  });
});

$("#add_admin").click(function () {
  var nom = document.getElementById("nom-adm").value;
  var prenom = document.getElementById("prenom-adm").value;
  var email = document.getElementById("email-adm").value;
  var cin = document.getElementById("cin-adm").value;
  var tel = document.getElementById("tel-adm").value;
  $.ajax({
    type: "POST",
    url: "../function/admin/admin/add_adm.jsp",
    data: {
      nom: nom,
      prenom: prenom,
      email: email,
      cin: cin,
      tel: tel,
    },
    success: function (result) {
      //debugger;
      console.log(result);
      location.reload();
    },
  });
});
