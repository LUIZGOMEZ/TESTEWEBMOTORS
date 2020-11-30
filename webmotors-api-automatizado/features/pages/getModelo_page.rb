class Modelo
    include HTTParty
    require_relative '../hooks/modelo_hook'

    base_uri "http://desafioonline.webmotors.com.br"

    def getModeloMakeID(id)
      return self.class.get("/api/OnlineChallenge/Model?MakeID=#{id}")
    end
end  