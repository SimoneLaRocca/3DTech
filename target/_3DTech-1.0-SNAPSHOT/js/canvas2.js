$(document).ready(function () {
    let contextPath = $("#ctxPath").val()
    $.ajax({
        url: contextPath + "/ChartServlet/line",
        method: "POST",
        success: function (data) {
            let ctx = document.getElementById('chart2').getContext('2d');
            let myChart = new Chart(ctx, {
                type: 'line',
                data: {
                    labels: data.labels,
                    datasets: [{
                        label: '# ordini',
                        data: data.info,
                        fill: false,
                        borderColor: 'rgb(75, 192, 192)',
                        tension: 0.1,
                        backgroundColor: 'rgb(75, 192, 192)'
                    }]
                }
            })
        }
    })
});