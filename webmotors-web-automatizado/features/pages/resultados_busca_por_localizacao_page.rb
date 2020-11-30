require 'site_prism'

class ResultadosBuscaPorLocalizacao < SitePrism::Page
    set_url "/carros/estoque?tipoveiculo=carros&estadocidade=estoque"

    element :campo_digite_seu_estado_cidade, '#locationAutoComplete'
    element :sugestao_estado_rio_de_janeiro, '#root > main > div.container > div.Search-result.Search-result--container-left > div > div.Filters__container > div.NavBar > div.NavBar--content > div > form > div:nth-child(1) > div.AutoComplete > div.AutoComplete-input-container.Form__field > div > div:nth-child(1) > div:nth-child(2) > div.AutoComplete-result-name'

    element :opcao_rio_de_janeiro, '#rio-de-janeiro'
    element :caminho_home, '#root > main > div.container > div.Search-result.Search-result--container-right > ol > li:nth-child(1) > a > span'
    element :caminho_carros, '#root > main > div.container > div.Search-result.Search-result--container-right > ol > li:nth-child(2) > a > span'
    element :caminho_rj, '#root > main > div.container > div.Search-result.Search-result--container-right > ol > li:nth-child(3)'
    element :secao_carros_rio_de_janeiro_novos_usados, '#root > main > div.container > div.Search-result.Search-result--container-right > h1'
    
    element :sugestao_cidade_ferraz_de_vasconcelos_sp, '#root > main > div.container > div.Search-result.Search-result--container-left > div > div.Filters__container > div.NavBar > div.NavBar--content > div > form > div:nth-child(1) > div.AutoComplete > div.AutoComplete-input-container.Form__field > div > div > div.AutoComplete-result > div.AutoComplete-result-name'

    element :opcao_ferraz_de_vasconcelos_sp, '#ferraz-de-vasconcelos---sp'
    element :caminho_sp, '#root > main > div.container > div.Search-result.Search-result--container-right > ol > li:nth-child(3) > a > span'
    element :caminho_ferraz_de_vasconcelos, '#root > main > div.container > div.Search-result.Search-result--container-right > ol > li:nth-child(4)'
    element :secao_carros_ferraz_de_vasconcelos_sp_novos_usados, '#root > main > div.container > div.Search-result.Search-result--container-right > h1'

    element :opcao_honda_secao_marca_carro, '#root > main > div.container > div.Search-result.Search-result--container-left > div > div.Filters__container > div.NavBar > div.NavBar--content > div > form > div:nth-child(6) > div.CarouselContainer > div > div > a:nth-child(4) > small'
    element :todos_modelos_secao_marca_carro, '#root > main > div.container > div.Search-result.Search-result--container-left > div > div.Filters__container > div.NavBar > div.NavBar--content > div > form > div:nth-child(6) > div.Filters__make-block > div:nth-child(2) > div.Filters__line.Filters__line--gray.Filters__line--icon.Filters__line--icon--right'
    element :opcao_city_secao_todos_modelos, '#root > main > div.container > div.Search-result.Search-result--container-left > div > div.Slide.SlideLeft.SlideLeft--opened > div > div:nth-child(5) > a:nth-child(2)'
    element :opcao_honda_city, '#honda-city'
    element :caminho_honda, '#root > main > div.container > div.Search-result.Search-result--container-right > ol > li:nth-child(5) > a > span'
    element :caminho_city, '#root > main > div.container > div.Search-result.Search-result--container-right > ol > li:nth-child(6)'
    element :secao_honda_city_ferraz_de_vasconcelos_sp_novos_usados, '#root > main > div.container > div.Search-result.Search-result--container-right > h1'
end 