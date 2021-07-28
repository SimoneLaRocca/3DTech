$(document).ready(function (){
    let email_pattern = /^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/
    let password_pattern =/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[._-])[A-Za-z\d._-]{8,16}$/

    let password = document.querySelector("#password")
    let email = document.querySelector("#email")

    email.addEventListener("input", function email_check() {
        let text = $("#email").val()
        if(text === String("")){
            this.style.borderColor = "grey"
        }if (email_pattern.test(text)) {
            this.style.borderColor = "green"
        } else {
            this.style.borderColor = "red"
        }
    })

    password.addEventListener("input", function password_check() {
        let text = $("#password").val()
        if(text === String("")){
            this.style.borderColor = "grey"
        }if (password_pattern.test(text)) {
            this.style.borderColor = "green"
        } else {
            this.style.borderColor = "red"
        }
    })

    let valid_input = function (element){
        if(element.value === "") {
            return false;
        }if(element.style.borderColor === "red"){
            return false;
        }else{
            return true;
        }
    }

    setInterval(function(){
        let input = $(".input")
        let bool = input.toArray().every(valid_input);
        if(bool){
            $(".accedi").css("background-image", "linear-gradient(#59CBE8 0%, #00B5E2 100%)")
            $(".accedi").removeAttr("disabled")
        }else{
            $(".accedi").css("background-image", "linear-gradient(grey 100%, grey 100%)")
            $(".accedi").attr("disabled", "disabled")
        }
    }, 500);

})