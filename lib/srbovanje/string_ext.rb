# encoding: utf-8

String.class_eval do

  # Preslovljava na latinicu
  # Params:
  # +charset+:: ako je :ascii preslovljava u "ošišanju" latinicu.
  def latinize(charset=:utf8)
    mapping = Srbovanje.latinica_map(charset)
    self.gsub(/.+?/) do |chr|
      mapping[chr] || chr
    end
  end

end
