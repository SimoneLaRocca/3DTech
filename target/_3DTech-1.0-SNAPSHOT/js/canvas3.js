$(document).ready(function () {
    let contextPath = $("#ctxPath").val()
    $.ajax({
        url: contextPath + "/ChartServlet/doughnut",
        method: "POST",
        success: function (data) {
            let ctx = document.getElementById('chart3').getContext('2d');
            let myChart = new Chart(ctx, {
                type: 'doughnut',
                data: {
                    labels: [
                        'Utenti',
                        'Amministratori'
                    ],
                    datasets: [{
                        label: 'My First Dataset',
                        data: data.info,
                        backgroundColor: [
                            'rgb(255, 99, 132)',
                            'rgb(54, 162, 235)'
                        ],
                        hoverOffset: 4
                    }]
                }
            })
        }
    })
});