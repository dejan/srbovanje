# encoding: utf-8
module Srbovanje

  ABECEDA = %w(A B C Č Ć D DŽ Đ E F G H I J K L LJ M N NJ O P R S Š T U V Z Ž)

  def latinicom(text)
    Preslovi.latinicom(text).force_encoding('utf-8').encode
  end

  def latinicom_ascii(text)
    Preslovi.latinicom_ascii(text).force_encoding('utf-8').encode
  end

  def abeceda
    ABECEDA
  end

  extend self

end
