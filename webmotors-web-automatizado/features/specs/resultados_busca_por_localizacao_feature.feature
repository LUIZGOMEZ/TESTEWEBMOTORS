# language: pt

@resultadosBuscaPorLocalizacao
Funcionalidade: Resultados de Busca por Localização 
	Como um usuário do sistema 
    Eu quero acessar os resultados de busca Webmotors
    Para que eu possa buscar carros por localização 

@buscaEstadoExistente
Cenário: Buscar carros por localização pelo Estado do Rio de Janeiro
	Dado que eu acesse a tela de Resultados de busca da Webmotors
	
	Quando eu informar no campo Localização, um estado existente "Rio de Janeiro"
	E eu selecionar a sugestão relacionada ao estado informado

	Então deve ser apresentada abaixo do campo Digite marca ou modelo do carro a opção RIO DE JANEIRO
	E deve ser apresentado o caminho Home > Carros > RJ
	E deve ser apresentada a seção Carros em Rio de Janeiro - Novos e Usados

@buscaCidadeExistente
Cenário: Buscar carros por localização pela Cidade Ferraz de Vasconcelos - SP 
	Dado que eu acesse a tela de Resultados de busca da Webmotors
	
	Quando eu informar no campo Localização, uma cidade existente "Ferraz de Vasconcelos - SP"
	E eu selecionar a sugestão relacionada a cidade informada

	Então deve ser apresentada abaixo do campo Digite marca ou modelo do carro a opção FERRAZ DE VASCONCELOS - SP
	E deve ser apresentado o caminho Home > Carros > Sp > Ferraz De Vasconcelos
	E deve ser apresentada a seção Carros em Ferraz de Vasconcelos SP - Novos e Usados

@clicaOpcoes
Cenário: Clicar nas opções Honda e City da seção à esquerda Marca do carro
	Dado que eu acesse a tela de Resultados de busca da Webmotors
	E eu informe no campo Localização, uma cidade existente "Ferraz de Vasconcelos - SP"
	E eu selecione a sugestão relacionada a cidade informada
	E eu clique na opção "Honda" da seção à esquerda Marca do carro
	E eu clique no menu Todos os modelos

	Quando eu selecionar a opção "CITY"

	Então deve ser apresentada abaixo do campo Digite marca ou modelo do carro a opção HONDA CITY
	E deve ser apresentado o caminho Home > Carros > Sp > Ferraz De Vasconcelos > Honda > City
	E deve ser apresentada a seção Honda City em Ferraz de Vasconcelos SP - Novos e Usados