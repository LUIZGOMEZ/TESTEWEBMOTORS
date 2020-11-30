# language: pt

@veiculo
Funcionalidade: Veículo
    Como um usuário do sistema
    Eu quero executar as requisições na API da Webmotors
    Para que eu possa recuperar os veículos cadastrados

@getVeiculoPage1
Cenário: Executar requisição GET Page 1 com retorno 200
    Dado que eu esteja utilizando a API da Webmotors
    Quando eu executar uma requisição para recuperar os veículos cadastrados com GET Page um  
    Então a API deve retornar os dados da requisição GET Page um com HTTP Status Code 200

@getVeiculoPage2
Cenário: Executar requisição GET Page 2 com retorno 200
    Dado que eu esteja utilizando a API da Webmotors
    Quando eu executar uma requisição para recuperar os veículos cadastrados com GET Page dois
    Então a API deve retornar os dados da requisição GET Page dois com HTTP Status Code 200

@getVeiculoPage3
Cenário: Executar requisição GET Page 3 com retorno 200
    Dado que eu esteja utilizando a API da Webmotors
    Quando eu executar uma requisição para recuperar os veículos cadastrados com GET Page três
    Então a API deve retornar os dados da requisição GET Page três com HTTP Status Code 200
