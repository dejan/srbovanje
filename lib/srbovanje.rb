# encoding: utf-8

require 'srbovanje/srbovanje'
require 'srbovanje/preslovi'
require 'srbovanje/string_ext'

if defined?(Rails)
  require 'srbovanje/railtie'
elsif defined?(I18n)
  require 'i18n_config'
end

module Srbovanje
end
