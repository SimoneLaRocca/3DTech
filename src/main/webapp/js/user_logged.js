// Non ci sarebbe bisogno di JS, si può fare in CSS
let user_login = document.querySelector(".email_user")
user_login.addEventListener("mouseover", function user_logged() {
    let option = document.querySelector(".opzioni")
    option.classList.toggle("down")
})



