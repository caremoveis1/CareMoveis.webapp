<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Transporte</title>
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Noto+Sans+Georgian&display=swap');
            h2{
                text-align: center;
                padding: 20px;
                font-family: 'Noto Sans Georgian', sans-serif;
            }

            h3{
                margin-bottom: 20px;
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

            .adicionar{
                text-align: right;
                padding: 5px;
                margin-top: 10px;
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


            fieldset{
                box-shadow: 2px 2px 0px 0px rgba(10, 7, 7, 0.39);
                padding: 15px;
                border: 2px solid black;
                border-radius: 5px;
                margin-bottom: 15px;
                padding-bottom: 20px;
            }

            form {
                padding: 15px;
            }

            input{
                gap: 20px;
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
            
                #cep, #logradouro{
            flex-direction: line;
            }

            main{
                background-color: #F5F5DC;
                align-items: center;
                padding: 10px;
            }

            .btn{
                display: flex;
                justify-content: flex-end;
                gap: 20px; 
            }

            .juntos{
                display: flex;
                margin-bottom: 10px;
            }
            .divisao{
                width:150px; /* Largura da divisão */
                height: 1px; /* Altura da divisão, você pode ajustar conforme necessário */
                margin: 10px; /* Espaçamento entre os campos */
            }
            #rua{
                margin-bottom: 10px;
            }
        </style>
    </head>
    <body>
        <header class="cabecalho">
            <h1 class="logo">CareMóveis</h1>   
        </header>
        <main>
            <h2>Dados do Transporte</h2>
            <form action="transporte" method="post" class="formulario">
                <fieldset>
                    <h2>Endereço de Retirada e Entrega:</h2>
                    
                    <fieldset class="estilofildset">
                        <h3>Preencha com o endereço de retirada:</h3>
                        <div class="juntos">
                            <label name="cep" for="cep" class="linha" id="cep">CEP: </label>
                            <input id="cep" type="number" name="cep" class="linha" placeholder="Digite seu CEP">
                            <div class="divisao"></div>
                            <label name="num" for="num" class="linha">Nº: </label>
                            <input id="num" type="number" name="num" class="linha" placeholder="Digite seu N°">
                        </div>
                        
                        <label name="rua" for="rua" class="linha">Rua: </label>
                        <input id="rua" type="text" name="rua" class="linha" placeholder="Digite sua Rua (ex: Avenida ...)">

                        <div class="juntos">
                            <label name="cidade" for="cidade" class="linha">Cidade: </label>
                            <input id="cidade" type="text" name="cidade" class="linha" placeholder="selecione sua cidade">
                            <div class="divisao"></div>
                            <label name="uf" for="uf" class="linha">Estado/UF: </label>
                            <input id="uf" type="text" maxlength="2" size="2" name="uf" class="linha" placeholder="Selecione seu estado">

                        </div>
                        
                        <label name="compl" for="compl" class="linha">Compl:</label>
                        <input id="compl" type="text" name="compl" class="linha" placeholder="Escreva um Complemento">
                    </fieldset>

                    <fieldset id="meuFieldset">
                        <h3>Preencha com o endereço de entrega</h3>
                        <div class="juntos">
                            <label name="cep" for="cep" class="linha" id="cep">CEP: </label>
                            <input id="cep" type="number" name="cep" class="linha" placeholder="Digite seu CEP">
                            <div class="divisao"></div>
                            <label name="num" for="num" class="linha">Nº: </label>
                            <input id="num" type="number" name="num" class="linha" placeholder="Digite seu N°">
                        </div>
                        
                        <label name="rua" for="rua" class="linha">Rua: </label>
                        <input id="rua" type="text" name="rua" class="linha" placeholder="Digite sua Rua (ex: Avenida ...)">

                        <div class="juntos">
                            <label name="cidade" for="cidade" class="linha">Cidade: </label>
                            <input id="cidade" type="text" name="cidade" class="linha" placeholder="Selecione sua cidade">
                            <div class="divisao"></div>
                            <label name="uf" for="uf" class="linha">Estado/UF: </label>
                            <input id="uf" type="text" maxlength="2" size="2" name="uf" class="linha" placeholder="Selecione seu estado">

                        </div>
                        
                        <label name="compl" for="compl" class="linha">Compl:</label>
                        <input id="compl" type="text" name="compl" class="linha"  placeholder="Escreva um Complemento">
                    </fieldset>

                    <div class="btn">
                        <button type="button">Avançar</button>
                    </div>
                </fieldset>

                <fieldset>
                    <h3>Dados do Móvel</h3>
                    <fieldset>
                        <label name="categ" for="categ" class="linha">Categoria: </label>
                        <input id="categ" type="text" name="categ" class="linha" placeholder="Selecione uma categoria">

                        <label name="alt" for="alt" class="linha">Altura: </label>
                        <input id="alt" type="number" name="alt" class="linha" placeholder="altura em metros"> 
                        
                        <div class="juntos">
                            <label name="larg" for="larg" class="linha">Largura: </label>
                            <input id="larg" type="number" name="larg" class="linha" placeholder="largura em metros"> 
                            <div class="divisao"></div>
                            <label name="peso" for="peso" class="linha">Peso Aproximado: </label>
                            <input type="number" id="peso" name="peso" class="linha" placeholder="largura em quilogramas"> 
                        </div>

                        <label name="material" for="material" class="linha">Material do Móvel: </label>
                        <input id="material" type="text" name="material" class="linha" placeholder="Selecione o material do móvel">

                        <input type="checkbox" name="termo" value="true" id="termo">
                        <label>Eu confirmo que todas as informações acima são verdadeiras.</label>
                        
                        <div class="adicionar">
                            <button id="add" type="button">+ Adicinar outro móvel</button>
                        </div>  
                    </fieldset>  
                    <div class="btn">
                        <button type="submit">Enviar</button>
                    </div>
                </fieldset>
            </form>
        </main>
        <footer>
                <p>Sua solução de entrega rápida e confiável.</p>
                <p><a href="#">Termos de Serviço</a> | <a href="#">Política de Privacidade</a></p>
                <p><a href="#">Para Clientes</a> | <a href="#">Para Motoristas</a></p>
                <p>CareMóveis &copy;</p>
            </div>
        </footer>
        <!-- <script>
            let etapaAtual = 1;

            function avancarEtapa(proximaEtapa) {
                document.getElementById(`etapa${etapaAtual}`).classList.remove('ativa');
                document.getElementById(`etapa${proximaEtapa}`).classList.add('ativa');
                etapaAtual = proximaEtapa;
            }

            function voltarEtapa(etapaAnterior) {
                document.getElementById(`etapa${etapaAtual}`).classList.remove('ativa');
                document.getElementById(`etapa${etapaAnterior}`).classList.add('ativa');
                etapaAtual = etapaAnterior;
            }
        </script> -->
    </body>
</html>