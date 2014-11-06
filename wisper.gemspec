# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'wisper/version'

Gem::Specification.new do |gem|
  gem.name          = "wisper"
  gem.version       = Wisper::VERSION
  gem.authors       = ["Kris Leech"]
  gem.email         = ["kris.leech@gmail.com"]
  gem.description   = %q{pub/sub for Ruby objects}
  gem.summary       = %q{pub/sub for Ruby objects}
  gem.homepage      = "https://github.com/krisleech/wisper"
  gem.license       = "MIT"

  signing_key = File.expand_path('~/.ssh/gem-private_key.pem')

  if File.exist?(signing_key)
    gem.signing_key = signing_key
    gem.cert_chain  = ['gem-public_cert.pem']
  end

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
