# encoding: utf-8

require 'test_helper'

describe Srbovanje do
  it 'preslovljava cirilicu u latinicu' do
    examples = [
      ["ЊЕГОШ", "NJEGOŠ", "NJEGOS"],
      ["Latinica", "Latinica", "Latinica"],
      ["Ђурђевак", "Đurđevak", "Djurdjevak"],
      ["Шабан Шаулић", "Šaban Šaulić", "Saban Saulic"],
      ["електродистрибуција", "elektrodistribucija", "elektrodistribucija"],
      ["ЂОРЂЕ Ђ. Ђорђевић", "ĐORĐE Đ. Đorđević", "DJORDJE Dj. Djordjevic"],
      ["ĐORĐE Đ. Đorđević", "ĐORĐE Đ. Đorđević", "DJORDJE Dj. Djordjevic"],
      ["ЉИЉА Љ. Љиљановић", "LJILJA Lj. Ljiljanović", "LJILJA Lj. Ljiljanovic"]
    ]

    examples.each do |input, latin, ascii|
      assert_equal latin, input.latinicom
      assert_equal ascii, input.latinicom_ascii
    end
  end
end

