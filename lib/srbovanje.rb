# encoding: utf-8

$KCODE = 'UTF8' if RUBY_VERSION.to_f < 1.9

require 'srbovanje/srbovanje'
require 'srbovanje/string_ext'

if defined?(Rails)
  require 'srbovanje/railtie'
elsif defined?(I18n)
  require 'i18n_config' 
end

module Srbovanje
end
