<%-- Created by IntelliJ IDEA. --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Vind Product</title>
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
    <article class="formulier">
    <h1>Zoek een Product</h1>
    <form method="post" action="Servlet?command=find" novalidate>
        <p>Welk product zoek je?</p>
        <p class="form-group">
            <label class="control-label" for="naam">Naam: </label> <input
                id="naam" name="naam" type="text" value="" required>
        </p>
        <p>
            <label for="zoek">&nbsp;</label> <input id="zoek" type="submit"
                                                    value="Vind Product">
        </p>
    </form>
    </article>
</div>
</body></html>