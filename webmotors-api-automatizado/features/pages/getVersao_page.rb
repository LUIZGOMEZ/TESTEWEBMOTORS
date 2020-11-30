class Versao
    include HTTParty
    require_relative '../hooks/versao_hook'

    base_uri "http://desafioonline.webmotors.com.br"

    def getVersaoModelID(id)
      return self.class.get("/api/OnlineChallenge/Version?ModelID=#{id}")
    end
end  