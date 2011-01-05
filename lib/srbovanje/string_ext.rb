# -*- encoding: utf-8 -*-

String.class_eval do
  def self.recode_sr_latin_map
    @@recode_sr_latin_map ||= {
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
      'Ш' => 'Š' }
  end
  
  def self.recode_sr_ascii_latin_map
    @@recode_sr_ascii_latin_map ||= 
      recode_sr_latin_map.merge(
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
        'Џ' => 'DZ')
  end

  def self.abeceda
    @@abeceda ||= %w(A B C Č Ć D DŽ Đ E F G H I J K L LJ M N NJ O P R S Š T U V Z Ž)
  end

  def recode_sr_latin
    self.class.recode(self.dup, self.class.recode_sr_latin_map)
  end

  def recode_sr_latin!
    self.class.recode(self, self.class.recode_sr_latin_map)
  end

  def recode_sr_ascii_latin
    self.class.recode(self.dup, self.class.recode_sr_ascii_latin_map)
  end

  def recode_sr_ascii_latin!
    self.class.recode(self, self.class.recode_sr_ascii_latin_map)
  end

  def slugify(separator = '-', return_separator_if_empty = true)
    s = parameterize(self.recode_sr_ascii_latin, separator)
    s.empty? && return_separator_if_empty ? separator : s
  end

private

  # NOTE: slighlty modified after porting from ActiveSupport
  #
  # Replaces special characters in a string so that it may be used as part of a 'pretty' URL.
  #
  # ==== Examples
  #
  #   @person = Person.find(1)
  #   # => #<Person id: 1, name: "Donald E. Knuth">
  #
  #   <%= link_to(@person.name, person_path(@person)) %>
  #   # => <a href="/person/1-donald-e-knuth">Donald E. Knuth</a>
  #
  def parameterize(string, sep = '-')
    # nil is same as blank
    sep = sep || ''
    parameterized_string = string.gsub(/[^a-z0-9\-_\+]+/i, sep)
    # Turn unwanted chars into the seperator
    unless sep.empty?
      re_sep = Regexp.escape(sep)
      # No more than one of the separator in a row.
      parameterized_string.gsub!(/#{re_sep}{2,}/, sep)
      # Remove leading/trailing separator.
      parameterized_string.gsub!(/^#{re_sep}|#{re_sep}$/i, '')
    end
    parameterized_string.downcase
  end

  def self.recode(str, mapping)
    str.gsub!(/.+?/) do |chr|
      mapping[chr] || chr
    end
  end
end
