
let input_bar = document.querySelector("#tags")
input_bar.addEventListener("input", function (event){
        $.post("/3DTech_war_exploded/GetAdvicesServlet",
            {input_bar: event.target.value},
            function (data_){
                console.log(data_)
            $("#tags").autocomplete({
                source: data_,
                autofocus: true,
                delay: 100
            })
        }
    )
})



