module AGENDA
  module API
    class ValidarEmail
      include HTTParty
      debug_output $stdout if HTTP_LOG
      base_uri CONFIG_APIREST['agenda']['url1']
binding.pry
      format :json
      headers 'Content-Type' => 'application/json'
      def get_validar_rate(top)
        self.class.get("/#{top}")
      end

      def get_validar_email(email)
        binding.pry
        self.class.get("/api/blackList?email=#{email}")
      end
    end
  end
end
