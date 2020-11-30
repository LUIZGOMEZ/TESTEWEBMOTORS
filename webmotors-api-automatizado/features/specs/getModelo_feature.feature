# language: pt

@modelo
Funcionalidade: Modelo
    Como um usuário do sistema
    Eu quero executar as requisições na API da Webmotors
    Para que eu possa recuperar os modelos cadastrados 

@getModeloMakeID1
Cenário: Executar requisição GET MakeID 1 - Chevrolet com retorno 200
    Dado que eu esteja utilizando a API da Webmotors
    Quando eu executar uma requisição para recuperar os modelos cadastrados com MakeID um - Chevrolet 
    Então a API deve retornar os dados da requisição GET MakeID um - Chevrolet com HTTP Status Code 200

@getModeloMakeID2
Cenário: Executar requisição GET MakeID 2 - Honda com retorno 200
    Dado que eu esteja utilizando a API da Webmotors
    Quando eu executar uma requisição para recuperar os modelos cadastrados com MakeID dois - Honda 
    Então a API deve retornar os dados da requisição GET MakeID dois - Honda com HTTP Status Code 200

@getModeloMakeID3
Cenário: Executar requisição GET MakeID 3 - Ford com retorno 200
    Dado que eu esteja utilizando a API da Webmotors
    Quando eu executar uma requisição para recuperar os modelos cadastrados com MakeID três - Ford 
    Então a API deve retornar os dados da requisição GET MakeID três - Ford com HTTP Status Code 200
