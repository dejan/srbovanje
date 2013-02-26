if defined?(I18n)
  I18n.backend.store_translations(:sr, 
    :i18n => {
      :transliterate => {
        :rule => Srbovanje::latinica_map(:ascii) }})
end
