Quando("eu executar uma requisição para recuperar as versões cadastradas com GET ModelID um") do
    @id = 1
    $response = @versao.getVersaoModelID(@id)
end

Então("a API deve retornar os dados da requisição GET ModelID um com HTTP Status Code {int}") do |statusCodeEsperado|
    if $response.code == 200
        puts "\nResponse Code: #{$response.code}"

        $response.each do |item|
            puts item.to_json
        end
    end

    expect($response.code).to eq(statusCodeEsperado)
end

Quando("eu executar uma requisição para recuperar as versões cadastradas com GET ModelID dois") do
    @id = 2
    $response = @versao.getVersaoModelID(@id)
end

Então("a API deve retornar os dados da requisição GET ModelID dois com HTTP Status Code {int}") do |statusCodeEsperado|
    if $response.code == 200
        puts "\nResponse Code: #{$response.code}"

        $response.each do |item|
            puts item.to_json
        end 
    end

    expect($response.code).to eq(statusCodeEsperado)
end

Quando("eu executar uma requisição para recuperar as versões cadastradas com GET ModelID três") do
    @id = 3
    $response = @versao.getVersaoModelID(@id)
end

Então("a API deve retornar os dados da requisição GET ModelID três com HTTP Status Code {int}") do |statusCodeEsperado|
    if $response.code == 200
        puts "\nResponse Code: #{$response.code}"

        $response.each do |item|
            puts item.to_json
        end
    end

    expect($response.code).to eq(statusCodeEsperado)
end