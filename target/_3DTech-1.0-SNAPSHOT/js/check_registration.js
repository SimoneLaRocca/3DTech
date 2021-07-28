$(document).ready(function (){
let surname_pattern = /^([a-zA-Z\s]){3,25}$/
let name_pattern = /^([a-zA-Z\s]){3,25}$/
let email_pattern = /^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/
let password_pattern =/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[._-])[A-Za-z\d._-]{8,16}$/
let zip_pattern = /^(\d){5}$/

let surname = document.querySelector("#cognome")
let name = document.querySelector("#nome")
let password = document.querySelector("#password")
let email = document.querySelector("#email")
let zip = document.querySelector("#cap")

    email.addEventListener("input", function email_check() {
        let text = $("#email").val()
        if(text === String("")){
            this.style.borderColor = "grey"
        }if (email_pattern.test(text)) {
            this.style.borderColor = "green"
            $(".alert_email").removeClass("advice")
        } else {
            this.style.borderColor = "red"
            $(".alert_email").addClass("advice")
        }
    })

    password.addEventListener("input", function password_check() {
        let text = $("#password").val()
        if(text === String("")){
            this.style.borderColor = "grey"
        }if (password_pattern.test(text)) {
            this.style.borderColor = "green"
            $(".alert_password").removeClass("advice")
        } else {
            this.style.borderColor = "red"
            $(".alert_password").addClass("advice")
        }
    })

    name.addEventListener("input", function name_check() {
        let text = $("#nome").val()
        if(text === String("")){
            this.style.borderColor = "grey"
        }if (name_pattern.test(text)) {
            this.style.borderColor = "green"
        } else {
            this.style.borderColor = "red"
        }
    })

    surname.addEventListener("input", function surname_check() {
        let text = $("#cognome").val()
        if(text === String("")){
            this.style.borderColor = "grey"
        }if (surname_pattern.test(text)) {
            this.style.borderColor = "green"
        } else {
            this.style.borderColor = "red"
        }
    })
 
    zip.addEventListener("input", function zip_check() {
        let text = $("#cap").val()
        if(text === String("")){
            this.style.borderColor = "grey"
        }if (zip_pattern.test(text)) {
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