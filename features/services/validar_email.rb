module AGENDA
  module API
    class ValidarEmail
      include HTTParty
      debug_output $stdout if HTTP_LOG
      base_uri CONFIG_APIREST['agenda']['url']

      format :json
      headers 'Content-Type' => 'application/json'
      def get_validar_rate(top)

        self.class.get("/#{top}")
      end

      def get_validar_email(top)
        self.class.get("/api/blackList?#{email}")
      end
    end
  end
end
