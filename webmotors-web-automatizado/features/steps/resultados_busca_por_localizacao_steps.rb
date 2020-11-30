resultados_busca_por_localizacao = ResultadosBuscaPorLocalizacao.new

Dado("que eu acesse a tela de Resultados de busca da Webmotors") do
  # contorno para que a localização não seja ativada automaticamente nos testes automatizados web
  visit "chrome://settings/content/location"
  sleep 3
  new_window = open_new_window
  switch_to_window new_window

  resultados_busca_por_localizacao.load
end

Quando("eu informar no campo Localização, um estado existente {string}") do |estadoExistente|
  resultados_busca_por_localizacao.wait_until_campo_digite_seu_estado_cidade_visible
  resultados_busca_por_localizacao.campo_digite_seu_estado_cidade.set estadoExistente
end

Quando("eu selecionar a sugestão relacionada ao estado informado") do
  resultados_busca_por_localizacao.wait_until_sugestao_estado_rio_de_janeiro_visible
  resultados_busca_por_localizacao.sugestao_estado_rio_de_janeiro.click
end

Então("deve ser apresentada abaixo do campo Digite marca ou modelo do carro a opção RIO DE JANEIRO") do
  sleep 3
  expect(resultados_busca_por_localizacao.opcao_rio_de_janeiro.text).to have_content("RIO DE JANEIRO")
end

Então("deve ser apresentado o caminho Home > Carros > RJ") do
  expect(resultados_busca_por_localizacao.caminho_home.text).to have_content("Home")
  expect(resultados_busca_por_localizacao.caminho_carros.text).to have_content("Carros")
  expect(resultados_busca_por_localizacao.caminho_rj.text).to have_content("Rj")
end

Então("deve ser apresentada a seção Carros em Rio de Janeiro - Novos e Usados") do
  expect(resultados_busca_por_localizacao.secao_carros_rio_de_janeiro_novos_usados.text).to have_content("Carros em Rio de Janeiro - Novos e Usados")
end

Quando("eu informar no campo Localização, uma cidade existente {string}") do |cidadeExistente|
  resultados_busca_por_localizacao.wait_until_campo_digite_seu_estado_cidade_visible
  resultados_busca_por_localizacao.campo_digite_seu_estado_cidade.set cidadeExistente
end

Quando("eu selecionar a sugestão relacionada a cidade informada") do
  resultados_busca_por_localizacao.wait_until_sugestao_cidade_ferraz_de_vasconcelos_sp_visible
  resultados_busca_por_localizacao.sugestao_cidade_ferraz_de_vasconcelos_sp.click
end

Então("deve ser apresentada abaixo do campo Digite marca ou modelo do carro a opção FERRAZ DE VASCONCELOS - SP") do
  sleep 3
  expect(resultados_busca_por_localizacao.opcao_ferraz_de_vasconcelos_sp.text).to have_content("FERRAZ DE VASCONCELOS - SP")
end

Então("deve ser apresentado o caminho Home > Carros > Sp > Ferraz De Vasconcelos") do
  expect(resultados_busca_por_localizacao.caminho_home.text).to have_content("Home")
  expect(resultados_busca_por_localizacao.caminho_carros.text).to have_content("Carros")
  expect(resultados_busca_por_localizacao.caminho_sp.text).to have_content("Sp")
  expect(resultados_busca_por_localizacao.caminho_ferraz_de_vasconcelos.text).to have_content("Ferraz De Vasconcelos")
end

Então("deve ser apresentada a seção Carros em Ferraz de Vasconcelos SP - Novos e Usados") do
  sleep 3
  expect(resultados_busca_por_localizacao.secao_carros_ferraz_de_vasconcelos_sp_novos_usados.text).to have_content("Ferraz de Vasconcelos/SP - Novos e Usados")
end

Dado("eu informe no campo Localização, uma cidade existente {string}") do |cidadeExistente|
  resultados_busca_por_localizacao.wait_until_campo_digite_seu_estado_cidade_visible
  resultados_busca_por_localizacao.campo_digite_seu_estado_cidade.set cidadeExistente
end

Dado("eu selecione a sugestão relacionada a cidade informada") do
  resultados_busca_por_localizacao.wait_until_sugestao_cidade_ferraz_de_vasconcelos_sp_visible
  resultados_busca_por_localizacao.sugestao_cidade_ferraz_de_vasconcelos_sp.click
end

Dado("eu clique na opção {string} da seção à esquerda Marca do carro") do |opcaoHonda|
  resultados_busca_por_localizacao.opcao_honda_secao_marca_carro.click
end

Dado("eu clique no menu Todos os modelos") do
  resultados_busca_por_localizacao.wait_until_todos_modelos_secao_marca_carro_visible
  resultados_busca_por_localizacao.todos_modelos_secao_marca_carro.click
end

Quando("eu selecionar a opção {string}") do |opcaoCity|
  resultados_busca_por_localizacao.wait_until_opcao_city_secao_todos_modelos_visible
  resultados_busca_por_localizacao.opcao_city_secao_todos_modelos.click
end

Então("deve ser apresentada abaixo do campo Digite marca ou modelo do carro a opção HONDA CITY") do
  sleep 3
  expect(resultados_busca_por_localizacao.opcao_honda_city.text).to have_content("HONDA CITY")
end

Então("deve ser apresentado o caminho Home > Carros > Sp > Ferraz De Vasconcelos > Honda > City") do
  expect(resultados_busca_por_localizacao.caminho_home.text).to have_content("Home")
  expect(resultados_busca_por_localizacao.caminho_carros.text).to have_content("Carros")
  expect(resultados_busca_por_localizacao.caminho_sp.text).to have_content("Sp")
  expect(resultados_busca_por_localizacao.caminho_ferraz_de_vasconcelos.text).to have_content("Ferraz De Vasconcelos")
  expect(resultados_busca_por_localizacao.caminho_honda.text).to have_content("Honda")
  expect(resultados_busca_por_localizacao.caminho_city.text).to have_content("City")
end

Então("deve ser apresentada a seção Honda City em Ferraz de Vasconcelos SP - Novos e Usados") do
  sleep 3
  expect(resultados_busca_por_localizacao.secao_honda_city_ferraz_de_vasconcelos_sp_novos_usados.text).to have_content("Honda City em Ferraz de Vasconcelos/SP - Novos e Usados")
end


