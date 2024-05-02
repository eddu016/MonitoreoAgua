<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>WaterVisor</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  <link rel="stylesheet" href="style.css">
</head>

<body>
  <section class="header" id="home">
    <nav>
      <h2 class="logo">WaterVisor</h2>
      <nav class="navigation">
        <a href="#home" id="home-text" onclick="showText('hidden-text-home')">Home</a>
        <a href="#about">Sobre Nosotros</a>
        <a href="#consejos">Consejos</a>
        <a href="#">Contact</a>
        <button class="btnLogin-popup">Login</button>
      </nav>
    </nav>

    <div class="content">
      <h1>Comienza a cuidar el agua</h1>
      <p>Lorem ipsum, dolor sit amet consectetur adipisicing elit.
        Fugiat rerum quasi expedita possimus debitis explicabo mollitia
        cum nobis at veritatis unde corporis placeat dolores, assumenda
        est, eveniet sapiente odio provident</p>
    </div>
   <div class="wrapper">
    <span class="icon-close">
      <ion-icon name="close"></ion-icon>
    </span>
    <div class="form-box login">
      <h2>Iniciar Sesi?n</h2>
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
          <a href="#">Olvidaste la contrase?a?</a>
        </div>
        <button type="submit" class="btn">Iniciar sesi?n</button>
        <div class="login-register">
          <p>No tienes cuenta? <a href="#"
             class="register-link"> Registrate!</a></p>
        </div>
      </form>
    </div>

    <div class="form-box register">
    <h2>Reg?strate</h2>
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
                Acepto los t?rminos y condiciones
            </label>
        </div>
        <button type="submit" class="btn">Registrarse</button>
        <div class="login-register">
            <p>?Ya tienes una cuenta? <a href="#" class="login-link">?Inicia sesi?n!</a></p>
        </div>
    </form>
</div>

  </div>
  </section>

  <!-- About -->
  <section class="about" id="about">
    <h1>Sobre Nosotros...</h1>
    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.</p>

    <div class="row">
      <div class="about-col">
        <h3>Quienes somos?</h3>
        <p>
          Lorem ipsum dolor sit amet consectetur adipisicing elit. 
          Numquam corrupti maxime laborum dolores aut, aspernatur
           tenetur sunt tempore ullam dolorum exercitationem quod 
           accusamus, laboriosam maiores molestiae ab. Perspiciatis,
            fuga. Magnam?</p>
      </div>
      <div class="about-col">
        <h3>Nuestro Objetivo</h3>
        <p>
          Lorem ipsum dolor sit amet consectetur adipisicing elit. 
          Numquam corrupti maxime laborum dolores aut, aspernatur
           tenetur sunt tempore ullam dolorum exercitationem quod 
           accusamus, laboriosam maiores molestiae ab. Perspiciatis,
            fuga. Magnam?</p>
      </div>
      <div class="about-col">
        <h3>ODS</h3>
        <p>
          Lorem ipsum dolor sit amet consectetur adipisicing elit. 
          Numquam corrupti maxime laborum dolores aut, aspernatur
           tenetur sunt tempore ullam dolorum exercitationem quod 
           accusamus, laboriosam maiores molestiae ab. Perspiciatis,
            fuga. Magnam?</p>
      </div>
    </div>
  </section>

<!-- Consejos -->
<section class="consejos" id="consejos">
  <h1>Nuestros consejos <br> y principales causas </h1>
  <p>Lorem psum dolor sit amet, consectetur adipiscing elit.</p>

  <div class="row">
    <div class="consejos-col">
      <img src="slider/agua-basura.jpg" alt="Hola">
      <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.
         Numquam animi eaque recusandae vel aspernatur reiciendis 
         neque natus, sint voluptatibus illum rerum voluptas modi expedita, 
         repudiandae repellendus similique odio ratione culpa!</p>
      <div class="layer">
        <h3>BASURA</h3>
      </div>
    </div>
    <div class="consejos-col">
      <img src="slider/vertido.jpg">
      <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.
        Numquam animi eaque recusandae vel aspernatur reiciendis 
        neque natus, sint voluptatibus illum rerum voluptas modi expedita, 
        repudiandae repellendus similique odio ratione culpa!</p>
      <div class="layer">
        <h3>Vertido de desechos industriales</h3>
      </div>
    </div>
    <div class="consejos-col">
      <img src="slider/juanacatlan.jpg">
      <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.
        Numquam animi eaque recusandae vel aspernatur reiciendis 
        neque natus, sint voluptatibus illum rerum voluptas modi expedita, 
        repudiandae repellendus similique odio ratione culpa!</p>
      <div class="layer">
        <h3>Vertido de desechos dom?sticos</h3>
      </div>
    </div>
    <div class="consejos-col">
      <img src="slider/derrame.jpg">
      <p>Lorem ipsum dolor sit amet consectetur adipisicing elit.
        Numquam animi eaque recusandae vel aspernatur reiciendis 
        neque natus, sint voluptatibus illum rerum voluptas modi expedita, 
        repudiandae repellendus similique odio ratione culpa!</p>
      <div class="layer">
        <h3>Derrames de petr?leo y combustibles</h3>
      </div>
  </div>
</section>






  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
    crossorigin="anonymous"></script>
  <script src="script.js"></script>
  <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
  <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
</body>

</html>