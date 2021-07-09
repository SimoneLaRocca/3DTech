/*
let input_bar = document.querySelector(".search_bar")
input_bar.addEventListener("input", function (event){
        $.post("/3DTech_war_exploded/GetAdvicesServlet",
            {input_bar_value: event.target.value},
            function (data_){
                $(".search_bar").autocomplete({
                    source: data_,
                    autofocus: true,
                    delay: 100
                })
            }
        )
})
*/

$(".search_bar").autocomplete({
    source: ["cioa", "cane", "gatto"],
    autofocus: true,
    delay: 100
})

