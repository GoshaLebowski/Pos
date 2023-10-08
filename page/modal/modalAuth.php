<!-- Модальное окно авторизации -->
<div class="modalScrin" onclick="authModalActive()">
    <div class="modalWindow login" onclick="event.stopPropagation()">

        <img src="../IMG/icons8-умножение-48.png" class="close-form" onclick="authModalActive()" alt="">
        <h6 class="modalWindowHead">Войти</h6>

        <form method="post" name="LogForm" class="auth-form">
            <div class="error-text"></div>
            <div class="form-floating mb">
                <label for="floatingInput">Email</label>
                <input type="email" class="form-control" name="emailLog" id="floatingInput"
                    placeholder="Введите ваш email"></input>
                <img class="form-floating-img" src="../IMG/modal/smsemail.svg" alt="">
                <div class="error" id="emailLogErr"></div>
            </div>
            <div class="form-floating mb">
                <label for="floatingPassword">Пароль</label>
                <input type="password" class="form-control floatingPassword" name="passLog" id="floatingPassword"
                    placeholder="Введите пароль">
                <img class="form-floating-img" src="../IMG/modal/lock.svg" alt="">
                <img class="form-floating-img-pasword" id="img-paswordOne" src="../IMG/modal/eye-slashpassvord.svg"
                    alt="" onclick="TogglePasword()">
                <div class="error" id="passLogErr"></div>
            </div>

            <div href="#" class="forgot-pasword mb"><a href="changePassword.php">Забыли пароль?</a></div>

            <div class="form-button-a-cont">
                <button class="form-button" type="submit">Войти</button>
            </div>

            <div class="correctReg">
                
            </div>

            <div class="notCorrectLogAndPass">
                
            </div>

            <p class="form-text-who">Ещё не зерегистрированы? <a onclick="registerModalActive()">Зарегистрироваться</a></p>
        </form>
    </div>
</div>