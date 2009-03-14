# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{srbovanje}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Dejan Simic"]
  s.date = %q{2009-03-14}
  s.description = %q{Ruby gem za transliteraciju ćirilice na latinicu i tzv. ASCII latinicu}
  s.email = %q{desimic@gmail.com}
  s.files = ["README.rdoc", "VERSION.yml", "lib/srbovanje", "lib/srbovanje/string_ext.rb", "lib/srbovanje.rb", "test/string_ext_test.rb", "test/test_helper.rb"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/dejan/srbovanje}
  s.rdoc_options = ["--inline-source", "--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{Ruby gem za transliteraciju ćirilice na latinicu i tzv. ASCII latinicu}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
