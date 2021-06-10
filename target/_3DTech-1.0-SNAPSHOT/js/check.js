$("document").ready(function () {
    // Handler sull'input element con id email
    $("#email").on("input", function () {

        const emailError = $("#spanId");
        const text = this.value;
        const emailPattern = /^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$/;

        if (!emailPattern.test(text)) {
            this.style.borderColor = "red";
            emailError.css("visibility", "visible");
        } else {
            this.style.borderColor = "gainsboro";
            emailError.css("visibility", "hidden");
        }
    });
});