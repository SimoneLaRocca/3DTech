
let email = document.getElementById("email")

email.addEventListener("input", function email_check(){
    let text = this.value
    let email_pattern = /(\w+)@(\w+)\.(\w+)/
    if(!email_pattern.test(text)){
        this.style.borderColor = "orangered"
    }if(email_pattern.test(text)){
        this.style.borderColor = "gainsboro"
    }
})

email.addEventListener("mouseover", function (){
    this.style.borderColor = "purple"
})

email.addEventListener("mouseleave", function (){
    this.style.borderColor = "gainsboro"
})

