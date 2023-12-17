require "razorpay_integration/version"
require 'razorpay_integration/configuration'
require 'razorpay_integration/base'
require 'razorpay_integration/customer'

module RazorpayIntegration
  class Error < StandardError; end

  class << self
    attr_accessor :configuration
  end

  def self.configure
    self.configuration ||= Configuration.new
    yield(configuration) if block_given?
  end
end
