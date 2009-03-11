class String
  @@recode_sr_latin_map = {
    'а' => 'a',   'А' => 'A',
    'б' => 'b',   'Б' => 'B',
    'в' => 'v',   'В' => 'V',
    'г' => 'g',   'Г' => 'G',
    'д' => 'd',   'Д' => 'D',
    'ђ' => 'đ',   'Ђ' => 'Đ',
    'е' => 'e',   'Е' => 'E',
    'ж' => 'ž',   'Ж' => 'Ž',
    'з' => 'z',   'З' => 'Z',
    'и' => 'i',   'И' => 'I',
    'ј' => 'j',   'Ј' => 'J',
    'к' => 'k',   'К' => 'K',
    'л' => 'l',   'Л' => 'L',
    'љ' => 'lj',  'Љ' => 'LJ',
    'м' => 'm',   'М' => 'M',
    'н' => 'n',   'Н' => 'N',
    'њ' => 'nj',  'Њ' => 'NJ',
    'о' => 'o',   'О' => 'O',
    'п' => 'p',   'П' => 'P',
    'р' => 'r',   'Р' => 'R',
    'с' => 's',   'С' => 'S',
    'т' => 't',   'Т' => 'T',
    'ћ' => 'ć',   'Ћ' => 'Ć',
    'ц' => 'c',   'Ц' => 'C',
    'у' => 'u',   'У' => 'U',
    'ф' => 'f',   'Ф' => 'F',
    'х' => 'h',   'Х' => 'H',
    'ч' => 'č',   'Ч' => 'Č',
    'џ' => 'dž',  'Џ' => 'DŽ',
    'ш' => 'š',   'Ш' => 'Š' }

  #
  # Some mapping appears to be missing like: 
  #
  #    'dž' => 'dz', 'DŽ' => 'DZ'
  #
  # but those are not needed since
  # 'ž' => 'z' and 'Ž' => 'Z' will recode those
  #
  @@recode_sr_ascii_latin_map = @@recode_sr_latin_map.merge(
    'ћ' => 'c', 'ć' => 'c',       'Ћ' => 'C', 'Ć' => 'C', 
    'ч' => 'c', 'č' => 'c',       'Ч' => 'C', 'Č' => 'C',
    'ж' => 'z', 'ž' => 'z',       'Ж' => 'Z', 'Ž' => 'Z',
    'š' => 's', 'ш' => 's',       'Ш' => 'S', 'Š' => 'S',
    'đ' => 'dj', 'ђ' => 'dj',     'Ђ' => 'DJ', 'Đ' => 'DJ', 
    'џ' => 'dz', 'Џ' => 'DZ')

  def recode_sr_latin
    self.gsub(/.+?/) do |chr|
      @@recode_sr_latin_map[chr] || chr
    end
  end
  
  def recode_sr_ascii_latin
    self.gsub(/.+?/) do |chr|
      @@recode_sr_ascii_latin_map[chr] || chr
    end
  end
end
