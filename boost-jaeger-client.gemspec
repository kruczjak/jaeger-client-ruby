lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'jaeger/client/version'

Gem::Specification.new do |spec|
  spec.name          = 'boost-jaeger-client'
  spec.version       = Jaeger::Client::VERSION
  spec.authors       = ['kruczjak', 'SaleMove TechMovers']
  spec.email         = ['kruczjak@gmail.com']

  spec.summary       = 'OpenTracing Tracer implementation for Jaeger in Ruby'
  spec.description   = ''
  spec.homepage      = ''
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.14'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rubocop', '~> 0.54.0'
  spec.add_development_dependency 'rubocop-rspec', '~> 1.24.0'

  spec.add_dependency 'opentracing', '~> 0.3'
  spec.add_dependency 'thrift'
end
