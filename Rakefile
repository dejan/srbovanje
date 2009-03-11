require 'rake/testtask'

desc 'Test srbovanje'
Rake::TestTask.new(:test) do |t|
  t.pattern = 'test/**/*_test.rb'
end

begin
  require 'jeweler'
  Jeweler::Tasks.new do |s|
    s.name = "srbovanje"
    s.summary = %{Ruby gem za transliteraciju ćirilice na latinicu i tzv. ASCII latinicu}
    s.email = "desimic@gmail.com"
    s.homepage = "http://github.com/dejan/srbovanje"
    s.description = "Ruby gem za transliteraciju ćirilice na latinicu i tzv. ASCII latinicu"
    s.authors = ["Dejan Simic"]
  end
rescue LoadError
  puts "Jeweler not available. Install it with: sudo gem install technicalpickles-jeweler -s http://gems.github.com"
end
