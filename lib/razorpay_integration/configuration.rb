module RazorpayIntegration
  class Configuration
    attr_accessor :api_key, :api_secret

    def initialize
      @api_key = api_key
      @api_secret = api_secret
    end
  end
end
