# language: pt

@marca
Funcionalidade: Marca
    Como um usuário do sistema
    Eu quero executar as requisições na API da Webmotors
    Para que eu possa recuperar as marcas cadastradas 

@getMarca
Cenário: Executar requisição GET Make com retorno 200
    Dado que eu esteja utilizando a API da Webmotors
    Quando eu executar uma requisição para recuperar as marcas cadastradas 
    Então a API deve retornar os dados da requisição GET Make com HTTP Status Code 200
