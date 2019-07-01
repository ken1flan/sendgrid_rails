
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "sendgrid_rails/version"

Gem::Specification.new do |spec|
  spec.name          = "sendgrid_rails"
  spec.version       = SendgridRails::VERSION
  spec.authors       = ["ken1flan"]
  spec.email         = ["ken1flan@gmail.com"]

  spec.summary       = %q{Send a mail from Ruby on Rails with SendGrid API. }
  spec.description   = %q{Send a mail from Ruby on Rails with SendGrid API.}
  spec.homepage      = "https://github.com/ken1flan/sendgrid_rails"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "mail"
  spec.add_dependency "sendgrid_ruby"
  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
