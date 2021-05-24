const emailField = document.getElementById("email");
const spanElement = document.getElementById("spanId");


emailField.addEventListener("input", function validateEmail() {
    const text = this.value;
    const emailPattern = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;

        if (!emailPattern.test(text)) {
            this.style.borderColor = "red";
            spanElement.style.visibility = "visible";
        } else {
            this.style.borderColor = "gainsboro";
            spanElement.style.visibility = "hidden";
        }
});



