require 'razorpay_integration/base'
require 'httparty'
require 'json'

module RazorpayIntegration
  class Customer < Base
    def initialize
      super
      puts "Customer Configuration: #{@config.api_key}, #{@config.api_secret}"
    end

    def create(name, contact, email, notes = {})
      end_point = '/customers'

      body = {
        name: name,
        contact: contact,
        email: email,
        fail_existing: '0',
        notes: notes,
      }.to_json

      response = HTTParty.post("#{BASE_URL}#{end_point}", options.merge(body: body))

      handle_response(response)
    end
  end
end
