I18n.backend.store_translations(:sr, i18n: {
  transliterate: {
    rule: ->(string) { Srbovanje.latinicom_ascii(string) }
  }
})
