# language: pt

@estoqueLoja
Funcionalidade: Estoque de Loja
	Como um usuário do sistema 
    Eu quero acessar o Estoque de Loja da Webmotors
    Para que eu possa verificar o Estoque de Loja

@verificaTelaEstoqueLoja
Cenário: Verificar tela de Estoque de Loja da Webmotors
	Dado que eu acesse a tela de Estoque de Loja da Webmotors com ID Revendedor relacionado a MAZOLA AUTOMOVEIS, e Vendedor CONCESSIONÁRIA, LOJA
	Quando eu verificar a tela de Estoque de Loja da Webmotors
	Então deve ser apresentada abaixo do campo Digite marca ou modelo do carro as opções MAZOLA AUTOMOVEIS, BRASIL e CONCESSIONÁRIA, LOJA

@verificaSecaoVendedor
Cenário: Verificar seção Vendedor à esquerda 
	Dado que eu acesse a tela de Estoque de Loja da Webmotors com ID Revendedor relacionado a MAZOLA AUTOMOVEIS, e Vendedor CONCESSIONÁRIA, LOJA
	Quando eu verificar a seção Vendedor à esquerda
	Então a segunda opção de Concessionária deve estar selecionada
	E a segunda opção de Loja deve estar selecionada

@opcaoHondaSecaoMarcaCarro
Cenário: Clicar na opção Honda da seção à esquerda Marca do carro
	Dado que eu acesse a tela de Estoque de Loja da Webmotors com ID Revendedor relacionado a MAZOLA AUTOMOVEIS, e Vendedor CONCESSIONÁRIA, LOJA

	Quando eu clicar na opção "Honda" da seção à esquerda Marca do carro

	Então deve ser apresentada abaixo do campo Digite marca ou modelo do carro a opção HONDA
	E abaixo da revendedora Mazola automóveis deve ser apresentado o caminho Home > Carros > Honda

@verificaModeloInexistenteSecaoMarcaCarro
Cenário: Verificar modelo de carro inexistente
	Dado que eu acesse a tela de Estoque de Loja da Webmotors com ID Revendedor relacionado a MAZOLA AUTOMOVEIS, e Vendedor CONCESSIONÁRIA, LOJA
	E eu clique na opção "Honda" da seção à esquerda Marca do carro da tela de Estoque de Loja
	E eu clique no menu Todos os modelos da tela de Estoque de Loja
	
	Quando eu informar no campo Digite o modelo desejado, um modelo inexistente "City" para o revendedor Mazola Automóveis 

	Então deve ser apresentada a mensagem Nenhum resultado