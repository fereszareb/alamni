//nbr du haut

window.addEventListener("load", function () {
    $.ajax({
      type: "POST",
      url: "../function/universite/dashboard_nbrs.jsp",
      success: function (result) {
        document.getElementById("dashboard_nbrs").innerHTML = result;
      },
    });
  });
  
  //
  var ctx1 = document.getElementById("Etudient_actif_stat").getContext("2d");
  var chart1 = new Chart(ctx1, {
    // The type of chart we want to create
    type: "line",
  
    // The data for our dataset
    data: {
      labels: [
        "January",
        "February",
        "March",
        "April",
        "May",
        "June",
        "July",
        "August",
        "September",
        "October",
        "November",
        "December",
      ],
      datasets: [
        {
          backgroundColor: "#ffd70030",
          borderColor: "gold",
          data: [6, 16, 5, 9, 6, 1, 12, 3, 8, 0, 2, 2],
          pointBackgroundColor: 'gold',
          borderWidth: 1 ,
        },
      ],
    },
  
    // Configuration options go here
    options: {
      legend: {
        display: false,
      },
      tooltips: {
        callbacks: {
          label: function (tooltipItem) {
            return tooltipItem.yLabel;
          },
        },
      },
    },
  });
  
  //Etudient_actif_par_universite
  var ctx2 = document
    .getElementById("Etudient_actif_par_universite")
    .getContext("2d");
  var chart2 = new Chart(ctx2, {
    // The type of chart we want to create
    type: "doughnut",
  
    // The data for our dataset
    data: {
      labels: [
        "January",
        "February",
        "March",
        "April",
        "May",
        "June",
        "July",
        "August",
        "September",
        "October",
        "November",
        "December",
      ],
      datasets: [
        {
          backgroundColor: [
            "#ffd700",
            "#ffd70010",
            "#ffd70020",
            "#ffd70030",
            "#ffd70040",
            "#ffd70050",
            "#ffd70060",
            "#ffd70070",
            "#ffd70080",
            "#ffd70090",
            "#ffd70096",
            "#ffd70099",
          ],
          borderColor: "#ffd70040",
          data: [0, 10, 5, 2, 16, 10, 38, 5, 20, 0, 4, 2],
        },
      ],
    },
  
    // Configuration options go here
    options: {
      legend: {
        display: false,
      },
    },
  });
  
  //Enseignant_annee
  var ctx3 = document.getElementById("Enseignant_annee").getContext("2d");
  var chart3 = new Chart(ctx3, {
    // The type of chart we want to create
    type: "bar",
  
    // The data for our dataset
    data: {
      labels: ["2020", "2021", "2022", "2023", "2024", "2025", "2026"],
      datasets: [
        {
          backgroundColor: "#ffd70030",
          borderColor: "#ffd70040",
          data: [0, 10, 5, 2, 20, 30, 45],
        },
      ],
    },
  
    // Configuration options go here
    options: {
      legend: {
        display: false,
      },
      tooltips: {
        callbacks: {
          label: function (tooltipItem) {
            return tooltipItem.yLabel;
          },
        },
      },
    },
  });
  
  //Etudiant_annee
  var ctx4 = document.getElementById("Etudiant_annee").getContext("2d");
  var chart4 = new Chart(ctx4, {
    // The type of chart we want to create
    type: "bar",
  
    // The data for our dataset
    data: {
      labels: ["2020", "2021", "2022", "2023", "2024", "2025", "2026"],
      datasets: [
        {
          backgroundColor: "#ffd70030",
          borderColor: "#ffd70040",
          data: [0, 10, 5, 2, 20, 30, 45],
        },
      ],
    },
  
    // Configuration options go here
    options: {
      legend: {
        display: false,
      },
      tooltips: {
        callbacks: {
          label: function (tooltipItem) {
            return tooltipItem.yLabel;
          },
        },
      },
    },
  });
  