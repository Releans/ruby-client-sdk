Gem::Specification.new do |s|
  s.name = 'releans_api'
  s.version = '1.1.0'
  s.summary = 'releans_api'
  s.description = 'The Releans SDK enables developers to use Releans Services in their code. You can get started in minutes.'
  s.authors = ['Releans Support']
  s.email = 'support@releans.com'
  s.homepage = 'https://releans.com/talk-to-sales'
  s.license = 'MIT'
  s.add_dependency('logging', '~> 2.0')
  s.add_dependency('faraday', '~> 0.10.0')
  s.add_dependency('faraday_middleware', '~> 0.13.1')
  s.add_dependency('test-unit', '~> 3.1.5')
  s.add_dependency('certifi', '~> 2016.9', '>= 2016.09.26')
  s.add_dependency('faraday-http-cache', '~> 1.2', '>= 1.2.2')
  s.required_ruby_version = '~> 2.0'
  s.files = Dir['{bin,lib,man,test,spec}/**/*', 'README*', 'LICENSE*']
  s.require_paths = ['lib']
end
