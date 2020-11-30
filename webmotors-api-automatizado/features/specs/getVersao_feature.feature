# language: pt

@versao
Funcionalidade: Versão
    Como um usuário do sistema
    Eu quero executar as requisições na API da Webmotors
    Para que eu possa recuperar as versões cadastradas 

@getVersaoModelID1
Cenário: Executar requisição GET ModelID 1 com retorno 200
    Dado que eu esteja utilizando a API da Webmotors
    Quando eu executar uma requisição para recuperar as versões cadastradas com GET ModelID um  
    Então a API deve retornar os dados da requisição GET ModelID um com HTTP Status Code 200

@getVersaoModelID2
Cenário: Executar requisição GET ModelID 2 com retorno 200
    Dado que eu esteja utilizando a API da Webmotors
    Quando eu executar uma requisição para recuperar as versões cadastradas com GET ModelID dois
    Então a API deve retornar os dados da requisição GET ModelID dois com HTTP Status Code 200

@getVersaoModelID3
Cenário: Executar requisição GET ModelID 3 com retorno 200
    Dado que eu esteja utilizando a API da Webmotors
    Quando eu executar uma requisição para recuperar as versões cadastradas com GET ModelID três
    Então a API deve retornar os dados da requisição GET ModelID três com HTTP Status Code 200
