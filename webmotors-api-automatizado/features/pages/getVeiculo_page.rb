class Veiculo
    include HTTParty
    require_relative '../hooks/veiculo_hook'

    base_uri "http://desafioonline.webmotors.com.br"

    def getVeiculosPage(page)
      return self.class.get("/api/OnlineChallenge/Vehicles?Page=#{page}")
    end
end  