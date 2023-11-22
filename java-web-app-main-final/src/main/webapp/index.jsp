<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <title>CareMóveis</title>
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Noto+Sans+Georgian&display=swap');

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

            header{
                box-shadow: 0px 2px 4px rgba(0, 0, 0, 0.2);
                background-color:  #708090;
                padding: 15px;
            }

            .logo{
                color: white;
                max-width: 100%; 
                height: auto; 
            }

            .direita{
                display: flex;
                gap: 10px;
            }

            .titulo{
                margin: 0;
                margin-left: 100px;
            }

            .cabecalho{
                display: flex;
                justify-content: space-between;
            }

            .caixa {
                width: 50%; 
                min-height: 550px; 
                padding: 20px;
                box-shadow: 0px 2px 4px rgba(0, 0, 0, 0.2);
                border-radius: 10px;
                box-sizing: border-box;
                margin: 10px; 
                display: flex;
                align-items: center;
                justify-content: center;
                /* background-color:; */
            }
            .boxTexto{
                margin: 55px;
                margin-bottom: 20%;
                font-size: 35px;
                line-height: 50px;
                font-family: 'Tinos', serif;

            }

            .caixa2 {
                box-shadow: 0px 2px 4px rgba(0, 0, 0, 0.2);
                width: 50%;
                min-height: 550px; 
                padding: 20px;
                border-radius: 10px; 
                box-sizing: border-box;
                text-align: left; 
                margin: 10px; 
                display: flex;
                flex-direction: column;
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

            .buttons2{
                display: flex;
                justify-content: flex-end;
                gap: 20px;
                margin-top: 70px;
            }


            @media (max-width: 780px){
                main{
                    flex-direction: column;
                }
                .caixa {
                    width: 100%;
                }

                .caixa2{
                    width: 100%;
                }
            }
        </style>
    </head>
    <body>
        <header class="cabecalho">
			<h1 class="logo">CareMóveis</h1>
			<div class ="direita">
				<button><a href="login.jsp">Login</a></button>
				<button><a href="cadastroCliente.jsp">Cadastro Cliente</a></button>
                <button><a href="">Cadastro Motorista</a></button>
			</div>
		</header>
		
		<main>
			<div class="caixa"> 
				<img  src="imagens/caminhao.svg" height="500px" alt="" class="imagem">
			</div>
			
			<div class="caixa2">
				<h2 class="boxTexto">Junte-se à CareMóveis e ganhe tempo e conforto no transporte dos seus móveis e eletrodomésticos! </h2>
				<div class="buttons2">
					<button class="button1"><a href="estaticoMotorista.html">Para Motoristas</a></button>
					<button class="button1"><a href="estaticoCliente.html">Para Clientes</a></button>
				</div>
				<br><br>
			</div>
		</main>
		
        <footer class="footer">
            <div class="company-name">Caremoveis</div>
            <p>Sua solução de entrega rápida e confiável.</p>
            <p><a href="#">Termos de Serviço</a> | <a href="#">Política de Privacidade</a></p>
            <p><a href="#">Para Clientes</a> | <a href="#">Para Motoristas</a></p>
            <p>CareMóveis &copy;</p>
        </footer>
    </body>
</html>