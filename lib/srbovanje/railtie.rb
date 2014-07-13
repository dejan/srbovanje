module Srbovanje 
  class Railtie < Rails::Railtie
    config.i18n.enforce_available_locales = true
    config.i18n.default_locale = :sr
    config.after_initialize do
      require 'i18n_config'
    end
  end
end
