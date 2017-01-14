# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'delivery_state_jp/version'

Gem::Specification.new do |spec|
  spec.name          = 'delivery_state_jp'
  spec.version       = DeliveryStateJp::VERSION
  spec.authors       = ['nyaahara']
  spec.email         = ['d.niihara@gmail.com']

  spec.summary       = %q{delivery_state_jp can get status from japanese delivery solutions}
  spec.description   = %q{delivery_state_jp can get status from japanese delivery solutions}
  spec.homepage      = 'https://github.com/nyaahara/delivery_state_jp'
  spec.license       = 'MIT'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'nokogiri', '~> 1.6'

  spec.add_development_dependency 'bundler', '~> 1.11'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'pry-byebug', '~> 0'
end
