<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>WaterVisor</title>
  <style>
    @import url('https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap');


*{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Poppins', sans-serif;
}

body{
    display:  flex;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
    background: url('water.jpg') no-repeat;
    background-size: cover;
    background-position: center;
}

header{
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    padding: 20px 100px;
    display: flex;
    justify-content: space-between;
    align-items: center;
    z-index: 99;
}

.logo{
    font-size: 2em;
    color: #fff;
    user-select: none;
}

.navigation a{
    position: relative;
    font-size: 1.1em;
    color: #fff;
    text-decoration: none;
    font-weight: 500;
    margin-left: 40px;
}

.navigation a::after{
    content: '';
    position: absolute;
    left: 0;
    bottom: -6px;
    width: 100%;
    height: 3PX;
    background: #fff;
    border-radius: 5px;
    transform-origin: right;
    transform: scaleX(0);
    transition: transform .5s ;
}

.navigation a:hover::after{
    transform-origin: lefts;
    transform: scaleX(1);
}

.navigation .btnLogin-popup{
    width: 130px;
    height: 50px;
    background: transparent;
    border: 2px solid #fff;
    outline: none;
    border-radius: 6px;
    cursor: pointer;
    font-size: 1,1em;
    color: #fff;
    font-weight: 500;
    margin-left: 40px;
    transition: .5s;
}

.navigation .btnLogin-popup:hover{
    background: #fff;
    color: #162938;
}

.wrapper{
     position: relative;
     width: 400px;
     height: 440px;
     background: transparent;
     border: 2px solid rgba(255, 255, 255, .5);
     border-radius: 20px;
     backdrop-filter: blur(20px);
     box-shadow: 0 0 30px rgba(0, 0, 0, .5);
     display: flex;
     justify-content: center;
     align-items: center;
     overflow: hidden;
     transform: scale(0);
     transition: transform .5s ease ,height .2s ease;
}

.wrapper.active-popup {
    transform: scale(1);
}

.wrapper.active {
    height: 520px;

}

.wrapper .form-box{
    width: 100%;
    padding: 40px;
}
.wrapper .form-box.login {
    transition: transform .18s ease;
    transform: translateX(0);
}

.wrapper.active .form-box.login {
    transition: none;
    transform: translateX(-400px);
}

.wrapper .form-box.register {
    position: absolute;
    transition: none;
    transform:  translateX(400px);
}

.wrapper.active .form-box.register {
    transition: transform .18s ease;
    transform: translateX(0);
}

.wrapper .icon-close {
    position: absolute;
    top: 0;
    right: 0;
    width: 45px;
    height: 45px;
    background: #162938;
    font-size: 2em;
    color: #fff;
    display: flex;
    justify-content: center;
    align-items: center;
    border-bottom-left-radius: 20px;
    cursor: pointer;
    z-index: 1;
}

.form-box h2{
    font-size: 2em;
    text-align: center;
}

.input-box{
    position: relative;
    width: 100%;
    height: 50px;
    border-bottom: 2px solid #162938;
    margin: 30px 0;
}

.input-box label{
    position: absolute;
    top: 50%;
    left: 5px;
    transform: translateY(-50%);
    font-size: 1em;
    color: #162938;
    font-weight: 500;
    pointer-events: none;
    transition: .5s;
}

.input-box input:focus~label,
.input-box input:valid~label {
    top: -5px;
}

.input-box input{
    width: 100%;
    height: 100%;
    background: transparent;
    border: none;
    outline: none;
    font-size: 1em;
    color: #162938;
    font-weight: 600;
    padding: 0 30px 0 5px;
}


.input-box .icon {
    position: absolute;
    right: 8px;
    font-size: 1.2em;
    color: #162938;
    line-height: 57px;
}

.remember-forgot {
    font-size: .9em;
    color: #162938;
    font-weight: 500;
    margin: -15px 0 15px;
    display: flex;
    justify-content: space-between;
}

.remember-forgot label input {
    accent-color: #162938;
    margin-right: 3px;

}

.remember-forgot a {
    color: #162938;
    text-decoration: none;
}

.remember-forgot a:hover {
    text-decoration: underline;
}

.btn {
    width: 100%;
    height: 45px;
    background: #162938;
    border: none;
    border-radius: 6px;
    cursor: pointer;
    font-size: 1em;
    color: #fff;
    font-weight: 500;
}

.login-register {
    font-size: .9em;
    color: #162938;
    text-align: center;
    font-weight: 500;
    margin: 25px 0 10px;
}

.login-register p a {
    color: #162938;
    text-decoration: none;
    font-weight: 600;
}

.login-register p a:hover {
    text-decoration: underline;
}
</style>
</head>
<body>
  <header>
    <h2 class="logo">Logo</h2>
    <nav class="navigation">
      <a href="#">Home</a>
      <a href="#">About</a>
      <a href="#">Services</a>
      <a href="#">Contact</a>
      <button class="btnLogin-popup">Login</button>
    </nav>
  </header>
  <div class="wrapper">
    <span class="icon-close">
      <ion-icon name="close"></ion-icon>
    </span>
    <div class="form-box login">
      <h2>Iniciar Sesi�n</h2>
      <form action="DBPG" method="post">
        <div class="input-box">
          <span class="icon"><ion-icon name="mail"></ion-icon></span>
          <input type="email" required name="email">
          <label>Email</label>
        </div>
        <div class="input-box">
          <span class="icon"><ion-icon name="lock-closed"></ion-icon></span>
          <input type="password" required name="password">
          <label>Password</label>
        </div>
        <div class="remember-forgot">
          <label><input type="checkbox">
          Recuerdame</label>
          <a href="#">Olvidaste la contrase�a?</a>
        </div>
        <button type="submit" class="btn">Iniciar sesi�n</button>
        <div class="login-register">
          <p>No tienes cuenta? <a href="#"
             class="register-link"> Registrate!</a></p>
        </div>
      </form>
    </div>

    <div class="form-box register">
    <h2>Reg�strate</h2>
    <form action="registro" method="post">
        <div class="input-box">
            <span class="icon">
                <ion-icon name="person"></ion-icon>
            </span>
            <input type="text" name="username" required>
            <label>Usuario</label>
        </div>
        <div class="input-box">
            <span class="icon">
                <ion-icon name="mail"></ion-icon>
            </span>
            <input type="text" name="email" required>
            <label>Email</label>
        </div>
        <div class="input-box">
            <span class="icon">
                <ion-icon name="lock-closed"></ion-icon>
            </span>
            <input type="password" name="password" required>
            <label>Password</label>
        </div>
        <div class="remember-forgot">
            <label>
                <input type="checkbox" required>
                Acepto los t�rminos y condiciones
            </label>
        </div>
        <button type="submit" class="btn">Registrarse</button>
        <div class="login-register">
            <p>�Ya tienes una cuenta? <a href="#" class="login-link">�Inicia sesi�n!</a></p>
        </div>
    </form>
</div>

  </div>


    <script>
        const wrapper = document.querySelector('.wrapper');
        const loginLink = document.querySelector('.login-link');
        const registerLink = document.querySelector('.register-link');
        const btnPopup = document.querySelector('.btnLogin-popup');
        const btnClose = document.querySelector('.icon-close');

        registerLink.addEventListener('click', () => {
            wrapper.classList.add('active');
        });

        loginLink.addEventListener('click', () => {
            wrapper.classList.remove('active');
        });

        btnPopup.addEventListener('click', () => {
            wrapper.classList.add('active-popup');
        });

        btnClose.addEventListener('click', () => {
            wrapper.classList.remove('active-popup');
        });
    </script>
  <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
  <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
</body>
</html>