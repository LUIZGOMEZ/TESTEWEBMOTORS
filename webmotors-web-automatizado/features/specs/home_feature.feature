# language: pt

@home
Funcionalidade: Home - Resultados de Busca por Marca e Modelo
    Como um usuário do sistema 
    Eu quero acessar a Home da Webmotors
    Para que eu possa buscar marcas e modelos de carro

@buscaMarcaInexistente
Cenário: Buscar marca de carro inexistente 
	Dado que eu acesse a Home da Webmotors
	Quando eu informar no campo Digite marca ou modelo do carro, uma marca de carro inexistente "Marca Inexistente"
	Então deve ser apresentada a mensagem Não encontramos este termo, verifique a ortografia

@selecionaSugestaoMarca
Cenário: Selecionar sugestão relacionada a marca de carro informada
	Dado que eu acesse a Home da Webmotors
	E eu informe no campo Digite marca ou modelo do carro, uma marca de carro existente "Honda"
	
	Quando eu selecionar a sugestão relacionada a marca de carro informada

	Então deve ser apresentada abaixo do campo Digite marca ou modelo do carro as opções BRASIL e HONDA CITY
	E deve ser apresentado o caminho Home > Carros > Honda > City
	E deve ser apresentada a seção Honda City Novos e Usados

@buscaModeloExistente
Cenário: Buscar modelo de carro existente 
	Dado que eu acesse a Home da Webmotors
	Quando eu informar no campo Digite marca ou modelo do carro, um modelo de carro existente "City"
	Então devem ser apresentadas sugestões relacionadas ao modelo informado

@selecionaSugestaoModelo
Cenário: Selecionar sugestão relacionada ao modelo de carro informado
	Dado que eu acesse a Home da Webmotors
	E eu informe no campo Digite marca ou modelo do carro, um modelo de carro existente "City"
	
	Quando eu selecionar a sugestão relacionada ao modelo de carro informado

	Então deve ser apresentada abaixo do campo Digite marca ou modelo do carro as opções BRASIL e HONDA CITY
	E deve ser apresentado o caminho Home > Carros > Honda > City
	E deve ser apresentada a seção Honda City Novos e Usados