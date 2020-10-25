
<%--
  Created by IntelliJ IDEA.
  User: piete_8alqa94
  Date: 06/10/2020
  Time: 11:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Winkel</title>
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
                <a href="Servlet?command=home">Home</a>
            </li>
            <li class="sectie">
                <a href="Servlet?command=winkel" class="selected">Winkel</a>
            </li>
            <li class="sectie">
                <a href="Servlet?command=bestelling">Mijn Bestelling</a>
            </li>
            <li class="sectie">
                <a href="Servlet?command=vindproduct">Vind Product</a>
            </li>
        </ul>
    </nav>
        <%= request.getAttribute("error")%>

    <div class="formulier">
        <form action="Servlet?command=add" method="post" novalidate>
            <label for="productnaam">Product:</label>
            <input type="text" id="productnaam" name="productnaam" value = "somenaam" placeholder="*verplicht">

            <label for="hoeveelheid">Hoeveelheid (in kilo)</label>
            <input type="number" id="hoeveelheid" name="hoeveelheid" value = "12" placeholder="*verplicht">

            <label for="prijsaanbod">Prijsaanbod</label>
            <input type="number" id="prijsaanbod" name="prijsaanbod" value = "3" placeholder="*verplicht">

            <input type="submit" value="Plaats bestelling">
        </form>

    </div>
</div>
</body>
</html>
