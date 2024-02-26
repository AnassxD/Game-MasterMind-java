<%@ page import="Model.JeuBean" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Le jeu mastermind</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f0f0f0;
        }

        h1 {
            color: #333;
            text-align: center;
            padding: 20px 0;
        }

        form {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            gap: 10px;
        }

        input[type="number"] {
            padding: 10px;
            border-radius: 5px;
            border: 1px solid #ccc;
        }

        input[type="submit"], input[type="reset"] {
            padding: 10px 20px;
            border-radius: 5px;
            border: none;
            color: #fff;
            cursor: pointer;
        }

        input[type="submit"] {
            background-color: #4caf50;
        }

        input[type="reset"] {
            background-color: #f44336;
        }
    </style>
</head>
<body>
<h1>Le jeu mastermind </h1>
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
