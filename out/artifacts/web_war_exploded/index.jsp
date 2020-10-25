<%-- Created by IntelliJ IDEA. --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
    <link rel="stylesheet" href="css/css.css">
  </head>
  <body>
  <div class="wrapper">

    <nav class="banner-main">
      <img class="imagee" src="images/foodbanner.png" alt="banner met food network logo">
    </nav>

    <nav class="container teal borderYtoX">

      <ul>
        <li class="sectie">
          <a href="Servlet?command=home" class="selected">Home</a>
        </li>
        <li class="sectie">
          <a href="Servlet?command=winkel">Winkel</a>
        </li>
        <li class="sectie">
          <a href="Servlet?command=bestelling">Mijn Bestelling</a>
        </li>
        <li class="sectie">
          <a href="Servlet?command=vindproduct">Vind Product</a>
        </li>
      </ul>
    </nav>

    <section class="explanation">

      <header class="overons">Over ons</header>
      <p>Bestel je Etenswaren op maat.</p>
      <p>In deze moeilijke tijden willen we iedereen kunnen bereiken zonder je het gevoel te geven dat dit niet veilig kan.</p>
      <p>We bieden kip, gehakt, rund, een ruim groente assortiment en fruit aan.</p>
      <p>Kies je product, je hoeveelheid en een prijs die je bereid bent te betalen.</p>
      <p>Wij zorgen voor de rest. Veel bestel plezier!</p>

      <img class="home_background" src="images/homeimg.jpg" alt="photo of fruits and vegetables and meat">
    </section>


  </div>
  </body>
</html>