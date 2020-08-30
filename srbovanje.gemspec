# encoding: utf-8
Gem::Specification.new do |gem|
  gem.name        = 'srbovanje'
  gem.summary     = 'Transliteracija ćirilice na latinicu i tzv. ASCII latinicu.'
  gem.description = 'Transliteracija ćirilice na latinicu i tzv. ASCII latinicu.'

  gem.version     = '2.1.0'

  gem.author      = 'Dejan Simic'
  gem.email       = 'desimic@gmail.com'
  gem.homepage    = 'https://github.com/dejan/srbovanje'
  gem.license     = 'MIT'

  gem.add_runtime_dependency "ffi", '>= 1.13.1'

  gem.files        = Dir['README.md', 'CHANGELOG.md', 'lib/**/*.rb']
end
