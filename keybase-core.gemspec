Gem::Specification.new do |gem|
  gem.name = 'keybase-core'
  gem.version = '0.1.4'
  gem.date = '2014-10-16'
  gem.summary = 'keybase-core'
  gem.description = 'Core Ruby lib for keybase.io'
  gem.authors = [ 'Max Krohn', 'Sean Handley' ]
  gem.email = 'sean.handley@gmail.com'
  gem.files = `git ls-files`.split("\n")
  gem.homepage = 'https://github.com/keybase/ruby-core'
  gem.license = 'BSD-3-Clause'
  
  gem.required_ruby_version = '> 2.0.0'
  
  # Runtime Dependencies
  gem.add_runtime_dependency 'scrypt', '~> 2.0.0'
  gem.add_runtime_dependency 'faraday', '~> 0.9.0'
  
  # Development Dependencies
  gem.add_development_dependency 'vcr', '~> 2.8.0'
  gem.add_development_dependency 'webmock', '~> 1.8.0'
  gem.add_development_dependency 'minitest', '~> 5.3.1'
  gem.add_development_dependency 'simplecov', '~> 0.8.2'
  gem.add_development_dependency 'yard', '~> 0.8.7.4'
  gem.add_development_dependency 'coveralls', '~> 0.7.0'

  # Gem Signing
  gem.cert_chain  = ['certs/seanhandley.pem']
  gem.signing_key = File.expand_path("~/.ssh/gem-private_key.pem") if $0 =~ /gem\z/
end
