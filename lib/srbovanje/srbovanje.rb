# encoding: utf-8

module Srbovanje

  ABECEDA = %w(A B C Č Ć D DŽ Đ E F G H I J K L LJ M N NJ O P R S Š T U V Z Ž)

  LATINICA_FULL_MAP = {
    'а' => 'a',
    'А' => 'A',
    'б' => 'b',
    'Б' => 'B',
    'в' => 'v',
    'В' => 'V',
    'г' => 'g',
    'Г' => 'G',
    'д' => 'd',
    'Д' => 'D',
    'ђ' => 'đ',
    'Ђ' => 'Đ',
    'е' => 'e',
    'Е' => 'E',
    'ж' => 'ž',
    'Ж' => 'Ž',
    'з' => 'z',
    'З' => 'Z',
    'и' => 'i',
    'И' => 'I',
    'ј' => 'j',
    'Ј' => 'J',
    'к' => 'k',
    'К' => 'K',
    'л' => 'l',
    'Л' => 'L',
    'љ' => 'lj',
    'Љ' => 'LJ',
    'м' => 'm',
    'М' => 'M',
    'н' => 'n',
    'Н' => 'N',
    'њ' => 'nj',
    'Њ' => 'NJ',
    'о' => 'o',
    'О' => 'O',
    'п' => 'p',
    'П' => 'P',
    'р' => 'r',
    'Р' => 'R',
    'с' => 's',
    'С' => 'S',
    'т' => 't',
    'Т' => 'T',
    'ћ' => 'ć',
    'Ћ' => 'Ć',
    'ц' => 'c',
    'Ц' => 'C',
    'у' => 'u',
    'У' => 'U',
    'ф' => 'f',
    'Ф' => 'F',
    'х' => 'h',
    'Х' => 'H',
    'ч' => 'č',
    'Ч' => 'Č',
    'џ' => 'dž',
    'Џ' => 'DŽ',
    'ш' => 'š',
    'Ш' => 'Š'
  }

  LATINICA_ASCII_MAP = LATINICA_FULL_MAP.merge(
    'ћ' => 'c',
    'ć' => 'c',
    'ч' => 'c',
    'č' => 'c',
    'Ћ' => 'C',
    'Ć' => 'C',
    'Ч' => 'C',
    'Č' => 'C',
    'ж' => 'z',
    'ž' => 'z',
    'Ж' => 'Z',
    'Ž' => 'Z',
    'š' => 's',
    'ш' => 's',
    'Ш' => 'S',
    'Š' => 'S',
    'đ' => 'dj',
    'ђ' => 'dj',
    'Ђ' => 'DJ',
    'Đ' => 'DJ',
    'џ' => 'dz',
    'Џ' => 'DZ'
  )

  LATINICOM_REGEXP = Regexp.union(LATINICA_FULL_MAP.keys)

  LATINICA_ASCII_REGEXP = Regexp.union(LATINICA_ASCII_MAP.keys)

  def latinicom(text)
    text.gsub(LATINICOM_REGEXP, LATINICA_FULL_MAP)
  end

  def latinicom_ascii(text)
    text.gsub(LATINICA_ASCII_REGEXP, LATINICA_ASCII_MAP)
  end

  def abeceda
    ABECEDA
  end

  extend self

end
