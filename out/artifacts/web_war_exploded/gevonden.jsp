<%@ page import="domain.model.Product" %><%-- Created by IntelliJ IDEA. --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% Product product= (Product) request.getAttribute("product"); %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gevonden</title>
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
                <a href="Servlet?command=home" >Home</a>
            </li>
            <li class="sectie">
                <a href="Servlet?command=winkel">Winkel</a>
            </li>
            <li class="sectie">
                <a href="Servlet?command=bestelling">Mijn Bestelling</a>
            </li>
            <li class="sectie">
                <a href="Servlet?command=vindproduct" class="selected">Vind Product</a>
            </li>
        </ul>
    </nav>

    <p >Je vroeg naar volgende gegevens: <%="Naam: " + product.getNaam() + " Hoeveelheid: " +  product.getHoeveelheidKilo() + " Kilo" + " PrijsAanbieding: " + product.getPrijsAanbieding() + " euro"%></p>



</div>
</body>
</html>