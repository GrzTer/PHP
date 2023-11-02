document.addEventListener("DOMContentLoaded", () => {
    const form = document.querySelector("form");

    form.addEventListener("submit", (event) => {
        let valid = true;

        const errorMessages = document.querySelectorAll(".error-message");
        errorMessages.forEach((errorMessage) => {
            errorMessage.textContent = "";
        });

        const validateInput = (input, error, errorMessage) => {
            if (input.value.trim() === "") {
                error.textContent = errorMessage;
                valid = false;
            }
        };

        const nameInput = document.getElementById("name");
        const nameError = document.getElementById("name-error");
        validateInput(nameInput, nameError, "Imię jest wymagane.");

        const surnameInput = document.getElementById("surname");
        const surnameError = document.getElementById("surname-error");
        validateInput(surnameInput, surnameError, "Nazwisko jest wymagane.");

        const emailInput = document.getElementById("email");
        const emailError = document.getElementById("email-error");
        validateInput(emailInput, emailError, "Email jest wymagany.");

        const emailPattern = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;
        if (!emailPattern.test(emailInput.value)) {
            emailError.textContent = "Niepoprawny format emaila.";
            valid = false;
        }

        const passwordInput = document.getElementById("password");
        const passwordError = document.getElementById("password-error");
        validateInput(passwordInput, passwordError, "Hasło jest wymagane.");

        if (!valid) {
            event.preventDefault();
        }
    });
});
