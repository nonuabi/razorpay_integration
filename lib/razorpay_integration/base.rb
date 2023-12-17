
require 'razorpay_integration/configuration'

module RazorpayIntegration
  class Base
    BASE_URL = 'https://api.razorpay.com/v1'

    def initialize
      @config = RazorpayIntegration.configuration
      yield(@config) if block_given?
    end

    private

    def options
      {
        basic_auth: {
          username: @config.api_key,
          password: @config.api_secret
        },
        headers: {
          'Content-Type' => 'application/json'
        }
      }
    end

    def handle_response(response)
      if response.success?
        JSON.parse(response.body)
      else
        raise StandardError, "Failed HTTP request: #{response.code}, #{response.body}"
      end
    end
  end
end
