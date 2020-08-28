# encoding: utf-8

String.class_eval do

  # Preslovljava na latinicu
  def latinicom
    Srbovanje.latinicom(self)
  end

  # Preslovljava na ASCII ("ošišanu") latinicu
  def latinicom_ascii
    Srbovanje.latinicom_ascii(self)
  end

end
