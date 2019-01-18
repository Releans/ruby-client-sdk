Gem::Specification.new do |s|
  s.name = 'releans'
  s.version = '1.0.0'
  s.summary = 'releans'
  s.description = 'The Releans SDK enables developers to use Releans Services in their code. You can get started in minutes.'
  s.authors = ['Releans Support']
  s.email = 'support@releans.com'
  s.homepage = 'https://apimatic.io'
  s.license = 'MIT'
  s.add_dependency('logging', '~> 2.0')
  s.add_dependency('faraday', '~> 0.10.0')
  s.add_dependency('test-unit', '~> 3.1.5')
  s.add_dependency('certifi', '~> 2016.9', '>= 2016.09.26')
  s.add_dependency('faraday-http-cache', '~> 1.2', '>= 1.2.2')
  s.required_ruby_version = '~> 2.0'
  s.files = Dir['{bin,lib,man,test,spec}/**/*', 'README*', 'LICENSE*']
  s.require_paths = ['lib']
end
