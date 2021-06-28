let search_bar = document.querySelector("input[type='text']")
search_bar.addEventListener("input", function (event) {
    $.post("/3DTech_war_exploded/GetAdvicesServlet", {input_bar: event.target.value}, function (data) {
        let results = document.querySelector("#listResults")
        results.classList.toggle("bar_advice")
    }, "json")
})
