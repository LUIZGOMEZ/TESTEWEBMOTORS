class Marca
    include HTTParty
    require_relative '../hooks/marca_hook'

    base_uri "http://desafioonline.webmotors.com.br"

    def getMarca()
      return self.class.get("/api/OnlineChallenge/Make")
    end
end  