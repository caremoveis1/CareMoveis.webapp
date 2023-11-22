<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
    <head>
        <title>Login</title>
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Montserrat:wght@300;400&display=swap');
            @import url('https://fonts.googleapis.com/css2?family=Roboto&display=swap');
            @import url('https://fonts.googleapis.com/css2?family=Tinos:wght@700&display=swap');

            .Login{
                background-color: #050609;
                border: none;
                position: absolute;
                top: 50%;
                left: 50%;
                transform: translate(-50%, -50%);
                width: 400px;
                height: 400px;
                padding: 30px;
                border-radius: 20px; 
                box-shadow: 6px 2px 6px rgba(0, 0, 0, 0.6);
            }
            body{
                background-image: linear-gradient(45deg, #708090, #cdc79c); 
            }

            .conteudo{
                margin-bottom: 20px;
                margin-top: 1%;
            }

            h1{
                color: white;
                text-align: center;
                margin-left: 20px;
                font-family: 'Tinos', serif;
            }

            h2{
                color: white;
                margin-top: 20px;
                font-family: 'Tinos', serif;
            }

            .container{
                display: flex;
                flex-direction: column;
                font-family: 'Tinos', serif;
            }

            label{
                color: white;
                font-family: 'Roboto', sans-serif;
                font-size: 15px;
            }
            input{
                padding: 10px 20px;
                border-radius: 10px;
                border: none;
                font-family: 'Roboto', sans-serif;
            }
            button{
                background: #cdc79c;
                box-shadow: 4px 4px 4px 0px rgba(10, 7, 7, 0.39);
                padding: 10px 20px;  
                border-radius: 8px; 
                width: 100%;
                font-size: 15px;
                text-align: center;
                border: none;
                font-weight: bold;
                font-family: 'Roboto', sans-serif;
            }
            a{
                text-align: center;
                color: aliceblue;
                font-family: 'Roboto', sans-serif;
            }
            label, input {
                display: block;
            }
        </style>
    </head>
    <body>
        <h1>CareMóveis</h1>

        <c:if test="${violations != null}">
        <h3>Violações</h2>
        <ul>
            <c:forEach var="violation" items="${violations}">
            <li>${violation.propertyPath} ${violation.message}</li>
            </c:forEach>
        </ul>
        </c:if>

        <form action="login" method="post" class="Login">
            
            <h1>Login:</h1>
            
            <label for="email">Email:</label>
            <input type="text" name="email" id="email" value="${email}" class="conteudo" placeholder="digite seu email">
            
            <label for="senha">Senha</label>
            <input type="password" name="senha" id="senha" value="${senha}" class="conteudo" placeholder="digite sua senha">
            
            <a class="conteudo" href="redefinirSenha.html">Esqueceu sua senha?</a>

            <button type="submit" value="Login">Login</button>
        </form>

    </body>
</html>