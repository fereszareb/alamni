window.addEventListener("load", function () {
    id = 12 ;
    $.ajax({
      type: "POST",
      url: "../function/enseignant/cour_charger.jsp",
      success: function (result) {
        document.getElementById("data_load").innerHTML = result;
      },
    });
  });

