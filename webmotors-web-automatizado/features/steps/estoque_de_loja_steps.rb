estoque_de_loja = EstoqueDeLoja.new

Dado("que eu acesse a tela de Estoque de Loja da Webmotors com ID Revendedor relacionado a MAZOLA AUTOMOVEIS, e Vendedor CONCESSIONÁRIA, LOJA") do 
    # contorno para que a localização não seja ativada automaticamente nos testes automatizados web
    visit "chrome://settings/content/location"
    sleep 3
    new_window = open_new_window
    switch_to_window new_window

    estoque_de_loja.load
end                                                                                                                                                
                                                                                                                                                    
Quando("eu verificar a tela de Estoque de Loja da Webmotors") do                                                                                   

end                                                                                                                                                
                                                                                                                                                    
Então("deve ser apresentada abaixo do campo Digite marca ou modelo do carro as opções MAZOLA AUTOMOVEIS, BRASIL e CONCESSIONÁRIA, LOJA") do        
    sleep 3
    expect(estoque_de_loja.opcao_mazola_automoveis.text).to have_content("MAZOLA AUTOMOVEIS")
    expect(estoque_de_loja.opcao_brasil.text).to have_content("BRASIL")
    expect(estoque_de_loja.opcao_concessionaria_loja.text).to have_content("CONCESSIONÁRIA, LOJA")
end

Quando("eu verificar a seção Vendedor à esquerda") do
    # contorno para que a seção "Vendedor" fique visível para os testes automatizados web
    estoque_de_loja.secao_localizacao.click
    page.execute_script("window.scrollTo(0, document.body.scrollHeight);")
    expect(estoque_de_loja.secao_vendedor.text).to have_content("Vendedor")
end

Então("a segunda opção de Concessionária deve estar selecionada") do
    expect(estoque_de_loja).to have_checked_field("concessionária")
end

Então("a segunda opção de Loja deve estar selecionada") do
    expect(estoque_de_loja).to have_checked_field("loja")
    
    # contorno para que as segundas opções "Concessiononária" e "Loja" apareçam no screenshot
    estoque_de_loja.secao_opcionais.click
end

Quando("eu clicar na opção {string} da seção à esquerda Marca do carro") do |opcaoHonda|
    # contorno para que a opção "Honda" da seção "Marca do carro" fique visível para os testes automatizados web
    estoque_de_loja.secao_localizacao.click
    page.execute_script("window.scrollTo(0, document.body.scrollHeight);")

    estoque_de_loja.opcao_honda_secao_marca_do_carro.click
end

Então("deve ser apresentada abaixo do campo Digite marca ou modelo do carro a opção HONDA") do
    sleep 3
    expect(estoque_de_loja.opcao_honda.text).to have_content("HONDA")
end

Então("abaixo da revendedora Mazola automóveis deve ser apresentado o caminho Home > Carros > Honda") do
    expect(estoque_de_loja.caminho_home.text).to have_content("Home")
    expect(estoque_de_loja.caminho_carros.text).to have_content("Carros")
    expect(estoque_de_loja.caminho_honda.text).to have_content("Honda")
end

Dado("eu clique na opção {string} da seção à esquerda Marca do carro da tela de Estoque de Loja") do |opcaoCity|
    # contorno para que a opção "Honda" da seção "Marca do carro" fique visível para os testes automatizados web
    estoque_de_loja.secao_localizacao.click
    page.execute_script("window.scrollTo(0, document.body.scrollHeight);")

    estoque_de_loja.opcao_honda_secao_marca_do_carro.click
end

Dado("eu clique no menu Todos os modelos da tela de Estoque de Loja") do
    estoque_de_loja.wait_until_menu_todos_modelos_visible
    estoque_de_loja.menu_todos_modelos.click
end

Quando("eu informar no campo Digite o modelo desejado, um modelo inexistente {string} para o revendedor Mazola Automóveis") do |modeloInexistenteCity|
    sleep 2
    estoque_de_loja.campo_digite_modelo_desejado.set modeloInexistenteCity
end

Então("deve ser apresentada a mensagem Nenhum resultado") do
    estoque_de_loja.wait_until_msg_nenhum_resultado_visible
    expect(estoque_de_loja.msg_nenhum_resultado.text).to have_content("Nenhum resultado")
end