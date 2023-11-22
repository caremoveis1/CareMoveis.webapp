<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
    <head>
        <title>Principal</title>
        <style>
            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
            }

            body{
                background-image: linear-gradient(45deg, #708090, #cdc79c); 
                text-align: center;
            }

            button{
                background: #cdc79c;
                box-shadow: 4px 4px 4px 0px rgba(10, 7, 7, 0.39);
                padding: 10px 20px;  
                border-radius: 8px; 
                font-size: 15px;
                text-align: center;
                border: none;
                font-family: 'Roboto', sans-serif;
            }


            footer {
                background-color: #333;
                color: white;
                padding: 20px 0;
                text-align: center;
            }

            footer a {
                color: #57a5ff;
                text-decoration: none;
            }

            footer a:hover {
                text-decoration: underline;
            }

            header{
                box-shadow: 0px 2px 4px rgba(0, 0, 0, 0.2);
                background-color:  #708090;
                padding: 15px;
            }

            main{
                display: flex;
                align-items: center;
                justify-content: center;
                background-color: #F5F5DC;
            }

            a{
                text-decoration: none;
                color: black;
            }
        </style>
    </head>
    <body>
        <h1>Bem-vindo(a), fulana.</h1>

        <h3>Deseja de realizar o pedido de um transporte do seu móvel/eletrodoméstico?</h3>
        <button><a href="transporte.jsp">Pedir agora!</a></button>
    </body>
</html>