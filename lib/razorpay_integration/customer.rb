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

    def edit(customer_id, name, contact, email)
      end_point = "/customers/#{customer_id}"

      body = {
        name: name,
        email: email,
        contact: contact
      }.to_json

      response = HTTParty.put("#{BASE_URL}#{end_point}", options.merge(body: body))

      handle_response(response)
    end

    def list(count = 10, skip = 0)
      end_point = "/customers?count=#{count}&skip=#{skip}"

      response = HTTParty.get("#{BASE_URL}#{end_point}", options)

      handle_response(response)
    end


    def get(customer_id)
      end_point = "/customers/#{customer_id}"

      response = HTTParty.get("#{BASE_URL}#{end_point}", options)

      handle_response(response)
    end
  end
end
