Dado("que eu esteja utilizando a API da Webmotors") do

end

Quando("eu executar uma requisição para recuperar as marcas cadastradas") do
    $response = @marca.getMarca()
end

Então("a API deve retornar os dados da requisição GET Make com HTTP Status Code {int}") do |statusCodeEsperado|
    if $response.code == 200
        puts "\nResponse Code: #{$response.code}"

        $response.each do |item|
            puts item.to_json
        end

        puts "\n"
        
        marcasEsperadas = ['Chevrolet', 'Honda', 'Ford']
        $response.each_with_index do |valor, indice|
            puts "Marca esperada: " + "#{marcasEsperadas[indice]}" + " - Marca obtida: " + "#{$response[indice]['Name']}"
            expect($response[indice]['Name']).to eq(marcasEsperadas[indice])
        end
            
    end

    expect($response.code).to eq(statusCodeEsperado)
end