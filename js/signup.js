const form = document.querySelector(".signup form"),
continueBtn = form.querySelector(".form-button-a-cont button"),
errorText = form.querySelector(".error-text");

form.onsubmit = (e) => {
    e.preventDefault(); //предотвращение отправки формы
}

continueBtn.onclick = () => {
    //использую Асинхронный JavaScript и XML или Ajax
    let xhr = new XMLHttpRequest(); //создаю XML объект
    xhr.open("POST", "php/signup.php", true);
    xhr.onload = () => {
        if(xhr.readyState === XMLHttpRequest.DONE) {
            if(xhr.status === 200) {
                let data = xhr.response;
                if(data === "success") {
                    location.href = "user.php";
                } else {
                    errorText.textContent = data;
                    errorText.style.display = "block";
                }
            }
        }
    }
    // я отправляю данные формы через ajax на php
    let formData = new FormData(form); //создание нового объекта FormData
    xhr.send(formData); //отправка данных формы в php
}