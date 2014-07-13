# encoding: utf-8

String.class_eval do

  # Preslovljava na latinicu
  # Params:
  # +charset+:: ako je :ascii preslovljava u "ošišanu" latinicu.
  def latinicom(charset=:utf8)
    mapping = Srbovanje.latinica_map(charset)
    self.gsub(/.+?/) do |chr|
      mapping[chr] || chr
    end
  end

end
