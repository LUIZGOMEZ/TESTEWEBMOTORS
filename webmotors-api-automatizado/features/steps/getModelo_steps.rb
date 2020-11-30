Quando("eu executar uma requisição para recuperar os modelos cadastrados com MakeID um - Chevrolet") do
    @id = 1
    $response = @modelo.getModeloMakeID(@id)
end

Então("a API deve retornar os dados da requisição GET MakeID um - Chevrolet com HTTP Status Code {int}") do |statusCodeEsperado|
    if $response.code == 200
        puts "\nResponse Code: #{$response.code}"

        $response.each do |item|
            puts item.to_json
        end

        puts "\n"
        
        modelosEsperados = ['Agile', 'Astra', 'Onix']
        $response.each_with_index do |valor, indice|
            puts "MakeID = 1 (Chevrolet) -> " + "Modelo esperado: " + "#{modelosEsperados[indice]}" + " - Modelo obtido: " + "#{$response[indice]['Name']}"
            expect($response[indice]['Name']).to eq(modelosEsperados[indice])
        end
            
    end

    expect($response.code).to eq(statusCodeEsperado)
end

Quando("eu executar uma requisição para recuperar os modelos cadastrados com MakeID dois - Honda") do
    @id = 2
    $response = @modelo.getModeloMakeID(@id)
end

Então("a API deve retornar os dados da requisição GET MakeID dois - Honda com HTTP Status Code {int}") do |statusCodeEsperado|
    if $response.code == 200
        puts "\nResponse Code: #{$response.code}"

        $response.each do |item|
            puts item.to_json
        end

        puts "\n"
        
        modelosEsperados = ['City', 'CRV', 'Fit']
        $response.each_with_index do |valor, indice|
            puts "MakeID = 2 (Honda) -> " + "Modelo esperado: " + "#{modelosEsperados[indice]}" + " - Modelo obtido: " + "#{$response[indice]['Name']}"
            expect($response[indice]['Name']).to eq(modelosEsperados[indice])
        end
            
    end

    expect($response.code).to eq(statusCodeEsperado)
end

Quando("eu executar uma requisição para recuperar os modelos cadastrados com MakeID três - Ford") do
    @id = 3
    $response = @modelo.getModeloMakeID(@id)
end

Então("a API deve retornar os dados da requisição GET MakeID três - Ford com HTTP Status Code {int}") do |statusCodeEsperado|
    if $response.code == 200
        puts "\nResponse Code: #{$response.code}"

        $response.each do |item|
            puts item.to_json
        end

        puts "\n"
        
        modelosEsperados = ['Ecosport', 'Fussion']
        $response.each_with_index do |valor, indice|
            puts "MakeID = 3 (Ford) -> " + "Modelo esperado: " + "#{modelosEsperados[indice]}" + " - Modelo obtido: " + "#{$response[indice]['Name']}"
            expect($response[indice]['Name']).to eq(modelosEsperados[indice])
        end
            
    end

    expect($response.code).to eq(statusCodeEsperado)
end