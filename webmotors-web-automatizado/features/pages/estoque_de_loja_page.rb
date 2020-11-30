require 'site_prism'

class EstoqueDeLoja < SitePrism::Page
    set_url "/carros/estoque/?IdRevendedor=3834764&TipoVeiculo=carros&anunciante=concessionária%7Cloja"

    element :opcao_mazola_automoveis, '#mazola-automoveis'
    element :opcao_brasil, '#brasil'
    element :opcao_concessionaria_loja, '#concessionaria\,-loja'
    element :segunda_opcao_concessionaria_secao_vendedor, '#concessionária' 
    element :segunda_opcao_loja_secao_vendedor, '#loja'

    element :secao_localizacao, '#root > main > div.container > div.Search-result.Search-result--container-left > div > div.Filters__container > div.NavBar > div.NavBar--content > div > form > div:nth-child(1) > div.Filters__container__group__title'
    element :secao_vendedor, '#root > main > div.container > div.Search-result.Search-result--container-left > div > div:nth-child(5) > div.Filters__container__group__title'
    element :secao_opcionais, '#root > main > div.container > div.Search-result.Search-result--container-left > div > div:nth-child(7) > div.Filters__container__group__title'

    element :opcao_honda_secao_marca_do_carro, '#root > main > div.container > div.Search-result.Search-result--container-left > div > div.Filters__container > div.NavBar > div.NavBar--content > div > form > div:nth-child(5) > div.CarouselContainer > div > div > a:nth-child(4)'
    element :opcao_honda, '#honda' 
    
    element :caminho_home, '#root > main > div.container > div.Search-result.Search-result--container-right > ol > li:nth-child(1) > a > span'
    element :caminho_carros, '#root > main > div.container > div.Search-result.Search-result--container-right > ol > li:nth-child(2) > a > span'
    element :caminho_honda, '#root > main > div.container > div.Search-result.Search-result--container-right > ol > li:nth-child(3)'
    
    element :menu_todos_modelos, '#root > main > div.container > div.Search-result.Search-result--container-left > div > div.Filters__container > div.NavBar > div.NavBar--content > div > form > div:nth-child(5) > div.Filters__make-block > div:nth-child(2) > div.Filters__line.Filters__line--gray.Filters__line--icon.Filters__line--icon--right'
    element :campo_digite_modelo_desejado, '#root > main > div.container > div.Search-result.Search-result--container-left > div > div.Slide.SlideLeft.SlideLeft--opened > div > div.Filters__container__group.Filters__container__group--no-border > div > input'
    element :msg_nenhum_resultado, '#root > main > div.container > div.Search-result.Search-result--container-left > div > div.Slide.SlideLeft.SlideLeft--opened > div > div:nth-child(5) > div.Filters__line.Filters__line__result.Filters__line__result__error'
end 