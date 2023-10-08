<!-- Модальное окно регистрации -->
<div class="modalScrinRegister" onclick="registerModalActive()">
    <div class="modalWindow signup" onclick="event.stopPropagation()">
        <img src="../IMG/icons8-умножение-48.png" class="close-form" onclick="registerModalActive()" alt="">
        <h6 class="modalWindowHead">Регистрация</h6>
        <form name="regForm" method="post" class="auth-form">
            <div class="error-text"></div>
            <div class="form-floating mb">
                <label for="floatingInput">Фамилия Имя Отчество</label>
                <input type="text" class="form-control" name="name" id="floatingInput" placeholder="Введите ФИО"></input>
                <img class="form-floating-img" src="../IMG/modal/Group 9214.svg" alt="">
                <div class="error" id="nameErr"></div>
            </div>
            <div class="form-floating mb">
                <label for="floatingInput">Номер телефона</label>
                <input type="text" class="form-control" name="number" id="floatingInput"
                    placeholder="Введите номер телефона" value=+7 required></input>
                <img class="form-floating-img" src="../IMG/modal/icons8-телефон-48 1.svg" alt="">
                <div class="error" id="numberErr"></div>
            </div>
            <div class="form-floating mb">
                <label for="floatingInput">Email</label>
                <input type="email" class="form-control" name="email" id="floatingInput"
                    placeholder="Введите ваш email" required></input>
                <img class="form-floating-img" src="../IMG/modal/smsemail.svg" alt="">
                <div class="error" id="emailErr"></div>
            </div>
            <div class="form-floating mb">
                <label for="floatingInput">Описание</label>
                <textarea class="form-control" maxlength='250' rows="4" placeholder="Добавьте описание"
                    name="description" id="floatingTextarea" required></textarea>
                <img class="form-floating-img" src="../IMG/modal/icons8-комментарии-48 1.svg" alt="">
                <div class="error" id="descriptionErr"></div>
            </div>
            <div class="form-floating mb">
                <label for="floatingPassword">Пароль</label>
                <input type="password" class="form-control floatingPassword1" name="password" id="floatingPassword"
                    placeholder="Введите пароль" required>
                <img class="form-floating-img" src="../IMG/modal/lock.svg" alt="">
                <img class="form-floating-img-pasword" src="../IMG/modal/eye-slashpassvord.svg" alt=""
                    id="img-paswordTwo" onclick="TogglePasword1()">
                <div class="error" id="passwordErr"></div>
            </div>
            <div class="form-floating mb">
                <label for="floatingPassword">Повторите пароль</label>
                <input type="password" class="form-control floatingPassword2" name="repeatPassword"
                    id="floatingPassword" name="repeatPassword" placeholder="Введите пароль ещё раз">
                <img class="form-floating-img" src="../IMG/modal/lock.svg" alt="" required>
                <img class="form-floating-img-pasword" src="../IMG/modal/eye-slashpassvord.svg" alt=""
                    id="img-paswordThee" onclick="TogglePasword2()">
                <div class="error" id="repeatPasswordErr"></div>
            </div>

            <div class="form-floating-label">Выберите роль</div>
            <label class="toggle" onclick="whyText()">
                <div class="toggleCeneter">
                    <input class="toggle-checkbox" id="userRole" type="checkbox" value=1 name="userRole">
                    <div class="toggle-switch"></div>
                    <span class="toggle-label">Я исполнитель</span>
                </div>
            </label>

            <div class="form-button-a-cont">
                <button class="form-button" type="submit">Зарегистрироваться</button>
            </div>

            <p class="form-text-who">Уже зарегистрированы? <a onclick="authModalActive()">Войти</a></p>
        </form>
    </div>
</div>
