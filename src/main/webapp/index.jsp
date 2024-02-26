<%@ page import="Model.JeuBean" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Le jeu mastermind</title>
</head>
<body>
<h1>Le jeu mastermind ============</h1>
<form action="ServletJeu" method="post">
    <label for="nombre">Entrer un nombre:</label><br>
    <input type="number" id="nombre" name="nombrePropose"><br>
    <input type="submit" value="Jouer">
    <input type="reset" value="Réinitialiser le jeu">
</form>
<div><i></i></div>
<%
    JeuBean b=(JeuBean) request.getAttribute("bean");
    if (b!=null) out.println(b.getMsg());


%>
</body>
</html>
