$(document).ready(function () {
    let contextPath = $("#ctxPath").val()
    let input_bar = document.querySelector(".search_bar")
    input_bar.addEventListener("input", function (event) {
        $.post(contextPath + "/GetAdvicesServlet",
            {input_bar_value: event.target.value},
            function (data) {
                $("#tags").autocomplete({
                    source: data,
                    autofocus: true,
                    delay: 100
                })
            }
        )
    })
})

