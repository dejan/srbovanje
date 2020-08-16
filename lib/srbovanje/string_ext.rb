# encoding: utf-8

String.class_eval do

  # Preslovljava na latinicu
  # Params:
  # +charset+:: ako je :ascii preslovljava u "ošišanu" latinicu.
  def latinicom(charset=:utf8)
    mapping = Srbovanje.latinica_map(charset)
    exp = Regexp.union(mapping.keys)
    self.gsub(exp, mapping)
  end
end
