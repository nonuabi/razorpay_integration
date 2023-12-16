
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "razorpay_integration/version"

Gem::Specification.new do |spec|
  spec.name          = "razorpay_integration"
  spec.version       = RazorpayIntegration::VERSION
  spec.authors       = ["Abhishek Verma"]
  spec.email         = ["nonuabi@gmail.com"]

  spec.summary       = %q{Razorpay Integration with Rails}
  spec.description   = %q{Razorpay Integration with Rails for Payment Gateway}
  spec.homepage      = "https://github.com/nonuabi/razorpay_integration.git"
  spec.license       = "MIT"


  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
