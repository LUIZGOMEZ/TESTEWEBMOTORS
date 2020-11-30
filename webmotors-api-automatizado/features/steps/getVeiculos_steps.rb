Quando("eu executar uma requisição para recuperar os veículos cadastrados com GET Page um") do
    @page = 1
    $response = @veiculo.getVeiculosPage(@page)
end

Então("a API deve retornar os dados da requisição GET Page um com HTTP Status Code {int}") do |statusCodeEsperado|
    if $response.code == 200
        puts "\nResponse Code: #{$response.code}"

        $response.each do |item|
            puts item.to_json
        end
    end

    expect($response.code).to eq(statusCodeEsperado)
end

Quando("eu executar uma requisição para recuperar os veículos cadastrados com GET Page dois") do
    @page = 2
    $response = @veiculo.getVeiculosPage(@page)
end

Então("a API deve retornar os dados da requisição GET Page dois com HTTP Status Code {int}") do |statusCodeEsperado|
    if $response.code == 200
        puts "\nResponse Code: #{$response.code}"

        $response.each do |item|
            puts item.to_json
        end 
    end

    expect($response.code).to eq(statusCodeEsperado)
end

Quando("eu executar uma requisição para recuperar os veículos cadastrados com GET Page três") do
    @page = 3
    $response = @veiculo.getVeiculosPage(@page)
end

Então("a API deve retornar os dados da requisição GET Page três com HTTP Status Code {int}") do |statusCodeEsperado|
    if $response.code == 200
        puts "\nResponse Code: #{$response.code}"

        $response.each do |item|
            puts item.to_json
        end
    end

    expect($response.code).to eq(statusCodeEsperado)
end