<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Contato</title>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Tinos&display=swap" rel="stylesheet">
        <style>
            * {
                margin: 0;
                padding: 0;
            }

            header{
                box-shadow: 0px 2px 4px rgba(0, 0, 0, 0.2);
                background-color:  #708090;
                padding: 15px;
            }

            .contato {
                display: flex;
                justify-content: center;
                align-items: center;
                flex-direction: column;
                font-size: 20px;
            }

            form{
                padding: 15px;
                margin-bottom: 10px;
                padding-bottom: 20px;
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

            input, textarea{
                height: 20px; 
                width: 200px;
                border: 1px solid black;
                border-radius: 10px;
                padding: 5px;
            }

            fieldset{
                border: 2px solid #708090;
                padding: 15px;
                margin-bottom: 10px;
                padding-bottom: 20px;
                font-size: 20px;
                font-weight: bold;
                text-align: center;
            }

            button{
                background: #cdc79c;
                box-shadow: 4px 4px 4px 0px rgba(10, 7, 7, 0.39);
                padding: 10px;  
                margin: 20px;
                border-radius: 8px; 
                font-size: 15px;
                text-align: center;
                border: none;
                font-family: 'Roboto', sans-serif;
                cursor: pointer;
            }
            
            input, label, textarea, button {
                display: block;
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
        </style>
    </head>
    <body>
        <header>
            <h1>Contato</h1>
        </header>

        <main>
            <form action="contato" method="post" class="contato">
                <fieldset>
                    <legend>Entre em contato</legend>

                    <label for="nome">Nome</label>
                    <input type="text" name="nome" id="nome">

                    <label for="email">E-mail</label>
                    <input type="email" name="email" id="email">

                    <label for="mensagem">Mensagem</label>
                    <textarea name="mensagem"></textarea>

                    <button type="submit">Enviar</button>
                </fieldset>
            </form>
        </main>

        <footer class="footer">
            <p>Sua solução de entrega rápida e confiável.</p>
            <p><a href="#">Termos de Serviço</a> | <a href="#">Política de Privacidade</a></p>
            <p><a href="#">Para Clientes</a> | <a href="#">Para Motoristas</a></p>
            <p>CareMóveis &copy;</p>
        </footer>

    </body>
</html>