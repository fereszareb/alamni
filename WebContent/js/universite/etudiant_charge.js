window.addEventListener("load", function () {
    $.ajax({
      type: "POST",
      url: "../function/universite/etudiant/etudiant_charge.jsp",
      success: function (result) {
        document.getElementById("data_load").innerHTML = result;
      },
    });
  });
  
  $("#btn_search_ens").click(function () {
    var cin = document.getElementById("cin").value;
    var prenom = document.getElementById("prenom").value;
    var nom = document.getElementById("nom").value;
    $.ajax({
      type: "POST",
      url: "../function/universite/etudiant/etudiant_charge_search.jsp",
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
    document.getElementById("modal-data-ens").innerHTML =
      "<div>Chargement ... </div>";
  
    $.ajax({
      url: "../function/universite/etudiant/etudiant_charge_data-ens.jsp",
      method: "post",
      data: { id: id },
      success: function (data) {
        document.getElementById("modal-data-ens").innerHTML = data;
      },
    });
  });
  
  $(document).on("click", "#btn-delete", function () {
    console.log("btn clicked");
    id = $(this).attr("data-id2");
    console.log("id is " + id);
  
    $.ajax({
      url: "../function/universite/etudiant/etudiant_delete_data-ens.jsp",
      method: "post",
      data: { id: id },
      success: function (result) {
        //alert("etudiant Supprimé");
        location.reload();
        console.log(result);
      },
    });
  });
  
  $("#add_ens").click(function () {
    var nom = document.getElementById("nom-ens").value;
    var prenom = document.getElementById("prenom-ens").value;
    var email = document.getElementById("email-ens").value;
    var cin = document.getElementById("cin-ens").value;
    var tel = document.getElementById("tel-ens").value;

    $.ajax({
      type: "POST",
      url: "../function/universite/etudiant/add_etudiant.jsp",
      data: {
        nom: nom,
        prenom: prenom,
        email: email,
        cin: cin,
        tel: tel
      },
      success: function (result) {
        //debugger;
        console.log(result);
        location.reload();
      },
    });
  });
  