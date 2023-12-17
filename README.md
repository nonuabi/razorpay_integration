# RazorpayIntegration

RazorpayIntegration is a Ruby gem for integrating with the Razorpay API.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'razorpay_integration'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install razorpay_integration

## Configuration

You can configure the gem with your Razorpay API key and secret like this:

```ruby
RazorpayIntegration.configure do |config|
  config.api_key = 'your_api_key'
  config.api_secret = 'your_api_secret'
end
```

## Usage

Here's how you can create a new customer:

**Create a new customer**

```ruby
customer = RazorpayIntegration::Customer.new
response = customer.create('Customer Name', 'Customer Contact', 'customer@email.com')
```

**Edit an existing customer**

```ruby
response = customer.edit('customer_id', 'New Customer Name', 'New Customer Contact', 'new_customer@email.com')
```

**List customers**

```ruby
response = customer.list(10, 0)
```

**Get a customer by ID**

```ruby
response = customer.get('customer_id')
```

## Directory Structure

- **lib/:**
  Contains the main codebase for the gem.

  - **razorpay_integration.rb:**
    Main module file.

  - **razorpay_integration/:**
    Contains the classes that form the core functionality of the gem.

    - **version.rb:**
            Contains the version number of the gem.
    - **configuration.rb:**
            Contains the Configuration class for configuring the gem.
    - **base.rb:**
            Contains the Base class for making HTTP requests.
    - **customer.rb:**
            Contains the Customer class for creating customers.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/nonuabi/razorpay_integration. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
