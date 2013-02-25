# -*- encoding: utf-8 -*-
require 'date'

Gem::Specification.new do |s|
  s.name        = 'srbovanje'
  s.version     = '0.2.1'
  s.date        = Date.today.to_s

  s.summary     = 'Ruby gem za transliteraciju ćirilice na latinicu i tzv. ASCII latinicu.'
  s.description = 'Ruby gem za transliteraciju ćirilice na latinicu i tzv. ASCII latinicu.'

  s.authors     = ['Dejan Simic']
  s.email       = 'desimic@gmail.com'
  s.homepage    = 'http://github.com/dejan/srbovanje'

  # ensure the gem is built out of versioned files
  s.files = Dir['Rakefile', '{bin,lib,man,test,spec}/**/*',
                'README*', 'MIT-LICENSE'] & `git ls-files -z`.split("\0")
end
