
require 'razorpay_integration/configuration'

module RazorpayIntegration
  class Base
    def initialize
      @config = Configuration.new
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
  end
end
