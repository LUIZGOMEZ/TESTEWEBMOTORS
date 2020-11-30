require 'site_prism'

class HomePage < SitePrism::Page
    set_url ""

    element :campo_digite_marca_modelo_carro, '#searchBar'
    element :msg_nao_encontramos_termo_verifique_ortografia, '#WhiteBox > div.NavBar > div.NavBar--content > div > div > div > div > div > div > div'
    element :sugestao_modelo_city, '#WhiteBox > div.NavBar > div.NavBar--content > div > div > div > div > div > div > a > div.SearchBar__results__result__name'

    element :sugestao_marca_honda, '#WhiteBox > div.NavBar > div.NavBar--content > div > div > div > div > div > div:nth-child(2) > a:nth-child(4) > div.SearchBar__results__result__name'

    element :opcao_brasil, '#brasil'
    element :opcao_honda_city, '#honda-city'
    element :caminho_home, '#root > main > div.container > div.Search-result.Search-result--container-right > ol > li:nth-child(1) > a > span'
    element :caminho_carros, '#root > main > div.container > div.Search-result.Search-result--container-right > ol > li:nth-child(2) > a > span'
    element :caminho_honda, '#root > main > div.container > div.Search-result.Search-result--container-right > ol > li:nth-child(3) > a > span'
    element :caminho_city, '#root > main > div.container > div.Search-result.Search-result--container-right > ol > li:nth-child(4)'
    element :secao_honda_city_novos_usados, '#root > main > div.container > div.Search-result.Search-result--container-right > h1'
end 