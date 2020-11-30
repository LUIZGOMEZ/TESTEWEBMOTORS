home_page = HomePage.new

Dado("que eu acesse a Home da Webmotors") do
  # contorno para localização não ser ativada automaticamente nos testes automatizados web
  visit "chrome://settings/content/location"
  sleep 3
  new_window = open_new_window
  switch_to_window new_window

  home_page.load
end

Quando("eu informar no campo Digite marca ou modelo do carro, uma marca de carro inexistente {string}") do |marcaInexistente|
  home_page.wait_until_campo_digite_marca_modelo_carro_visible
  home_page.campo_digite_marca_modelo_carro.set marcaInexistente
end

Então("deve ser apresentada a mensagem Não encontramos este termo, verifique a ortografia") do
  home_page.wait_until_msg_nao_encontramos_termo_verifique_ortografia_visible
  expect(home_page.msg_nao_encontramos_termo_verifique_ortografia.text).to have_content("Não encontramos este termo, verifique a ortografia")
end

Dado("eu informe no campo Digite marca ou modelo do carro, uma marca de carro existente {string}") do |marcaExistente|
  home_page.wait_until_campo_digite_marca_modelo_carro_visible
  home_page.campo_digite_marca_modelo_carro.set marcaExistente
end

Quando("eu selecionar a sugestão relacionada a marca de carro informada") do
  home_page.wait_until_sugestao_marca_honda_visible
  home_page.sugestao_marca_honda.click
end

Então("deve ser apresentada abaixo do campo Digite marca ou modelo do carro as opções BRASIL e HONDA CITY") do
  sleep 3
  expect(home_page.opcao_brasil.text).to have_content("BRASIL")
  expect(home_page.opcao_honda_city.text).to have_content("HONDA CITY")
end

Então("deve ser apresentado o caminho Home > Carros > Honda > City") do
  expect(home_page.caminho_home.text).to have_content("Home")
  expect(home_page.caminho_carros.text).to have_content("Carros")
  expect(home_page.caminho_honda.text).to have_content("Honda")
  expect(home_page.caminho_city.text).to have_content("City")
end

Então("deve ser apresentada a seção Honda City Novos e Usados") do 
  expect(home_page.secao_honda_city_novos_usados.text).to have_content("Honda City Novos e Usados")
end

Quando("eu informar no campo Digite marca ou modelo do carro, um modelo de carro existente {string}") do |modeloInexistente|
  home_page.wait_until_campo_digite_marca_modelo_carro_visible
  home_page.campo_digite_marca_modelo_carro.set modeloInexistente
end

Então("devem ser apresentadas sugestões relacionadas ao modelo informado") do
  home_page.wait_until_sugestao_modelo_city_visible
  expect(home_page.sugestao_modelo_city.text).to have_content("City")
end

Dado("eu informe no campo Digite marca ou modelo do carro, um modelo de carro existente {string}") do |modeloExistente|
  home_page.wait_until_campo_digite_marca_modelo_carro_visible
  home_page.campo_digite_marca_modelo_carro.set modeloExistente
end

Quando("eu selecionar a sugestão relacionada ao modelo de carro informado") do
  home_page.wait_until_sugestao_modelo_city_visible
  home_page.sugestao_modelo_city.click
end



