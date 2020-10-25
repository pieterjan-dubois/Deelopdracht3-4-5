<%@ page import="domain.db.ProductDB" %>
<%@ page import="domain.model.Product" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: piete_8alqa94
  Date: 06/10/2020
  Time: 11:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mijn Bestelling</title>
    <link rel="stylesheet" href="css/css.css">
</head>
</head>
<%
    ArrayList<Product> producten = (ArrayList<Product>) request.getAttribute("producten");

%>
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
                <a href="Servlet?command=winkel">Winkel</a>
            </li>
            <li class="sectie">
                <a href="Servlet?command=bestelling" class="selected">Mijn Bestelling</a>
            </li>
            <li class="sectie">
                <a href="Servlet?command=vindproduct">Vind Product</a>
            </li>
        </ul>
    </nav>
    <table>

        <thead>
        <tr>
            <th>Product</th>
            <th>Hoeveelheid (kilo)</th>
            <th>Prijsaanbieding</th>
            <th>Verwijder</th>
        </tr>
        </thead>
        <%for(Product product : producten) { %>
        <tr>
            <th><%= product.getNaam()%></th>
            <th><%= product.getHoeveelheidKilo()%></th>
            <th><%= product.getPrijsAanbieding()%></th>
            <td><a href="Servlet?command=deleteconfirm&naam=<%= product.getNaam() %>">Verwijder</a></td>
        </tr>
        <%}%>


    </table>

    <table class="RESULT">
        <thead>
        <tr>
            <th>totaal producten: </th>
            <th><%= request.getAttribute("totaalProducten")%> </th>

        </tr>

        <tr>
            <th>totaal gewicht:</th>
            <th><%= request.getAttribute("totaalGewicht")%></th>
        </tr>

        <tr>
            <th>totaal prijs:</th>
            <th><%= request.getAttribute("totaalPrijs")%></th>
        </tr>

        </thead>
    </table>
</div>
</body>
</html>
