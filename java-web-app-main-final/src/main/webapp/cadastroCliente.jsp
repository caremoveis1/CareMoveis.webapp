<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html lang="pt">
    <head>
        <title>Cadastrar Cliente</title>
        <style>
            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
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

            h1{
                color: white;
            }
                
            .formulario{   
                padding: 10px;
                width: 50% ;
                margin: 0 auto;
                margin-bottom: 20px;
                border-radius: 10px;
                background-color: #70809086;;
                font-weight: bold;
                box-shadow: 4px 4px 4px 0px rgba(10, 7, 7, 0.39);
                font-family: 'Noto Sans Georgian', sans-serif;

            }

            header{
                box-shadow: 0px 2px 4px rgba(0, 0, 0, 0.2);
                background-color:  #708090;
                padding: 7px;
            }


            fieldset{
                box-shadow: 2px 2px 0px 0px rgba(10, 7, 7, 0.39);
                padding: 15px;
                border: 2px solid black;
                border-radius: 5px;
                margin-bottom: 15px;
                padding-bottom: 20px;
            }

            label{
                justify-content: flex-end;
            }

            .linha {
                display: flex;
                flex-direction: column;
                margin-bottom: 5px;
                border: 1px solid #2a2727;
                border-radius: 5px;
                padding: 5px;
                font-size: 16px;;
                width: 100%;
            }

            main{
                background-color: #F5F5DC;
                align-items: center;
                padding: 10px;
            }
        </style>
    </head>
    <body>
        <header>
			<h1>CareMóveis</h1>
		</header>

        <c:if test="${violations != null}">
        <h3>Violações</h2>
        <ul>
            <c:forEach var="violation" items="${violations}">
            <li>${violation.propertyPath} ${violation.message}</li>
            </c:forEach>
        </ul>
        </c:if>

        <main>
            <form action="cadastroCliente" method="post" class="formulario">
                <fieldset>
                    <legend>Dados Pessoais</legend>
    
                    <label class="linha" for="nome">Nome Completo:</label>
                    <input class="linha" type="text" id="nome" name="nome" value="${cadastroForm.nome}">
    
                    <label class="linha" for="cpf">CPF:</label>
                    <input class="linha" type="text" id="cpf" name="cpf" value="${cadastroForm.cpf}">
    
                    <label class="linha" for="tel">Telefone:</label>
                    <input class="linha" type="tel" id="tel" name="tel" placeholder="(11) 9 0000-0000" value="${cadastroForm.telefone}">
                
                </fieldset>
    
                <fieldset>
    
                    <legend>Dados de Acesso</legend>
    
                    <label class="linha" for="email">Email:</label>
                    <input class="linha" type="email" name="email" id="email" value="${cadastroForm.email}">
    
                    <label class="linha" for="senha">Senha:</label>
                    <input class="linha" type="password" name="senha" id="senha" value="${cadastroForm.senha}">
    
                </fieldset>
    
                <button type="submit" value="Registrar">Registrar</button>
            </form>
        </main>
        <footer>
			<p>CareMóveis &copy;</p>
		</footer>
    </body>
</html>