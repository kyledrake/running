Gem::Specification.new do |s|
  s.name = 'running'
  s.version = '0.0.1'
  s.authors = ['Kyle Drake']
  s.email = ['kyledrake@gmail.com']
  s.homepage = 'http://github.com/kyledrake/running'
  s.summary = 'Helpers for finding out which version of Ruby (MRI 1.8, MRI 1.9, Rubinius, etc) you are using.'
  s.description = 'Helpers for finding out which version of Ruby (MRI 1.8, MRI 1.9, Rubinius, etc) you are using. Use cases include testing with code features only available on certain platforms.'

  s.files = `git ls-files`.split("\n")
  s.require_paths = %w[lib]
  s.rubyforge_project = s.name
  s.required_rubygems_version = '>= 1.3.4'

  s.add_dependency 'json'
  s.add_dependency 'faraday',     '>= 0.6.1'

  s.add_development_dependency 'rake',     '>= 0'
  s.add_development_dependency 'wrong',    '= 0.5.0'
  s.add_development_dependency 'minitest', '= 2.2.2'
  s.add_development_dependency 'webmock', '= 1.6.4'
  s.add_development_dependency 'hashie',  '= 1.0.0'
end