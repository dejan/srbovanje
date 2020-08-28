# encoding: utf-8

require 'test_helper'

describe String do
  it 'preslovnjava u latinicu' do
    assert_equal "NJEGOŠ", "ЊЕГОШ".latinicom
    assert_equal "Šaban Šaulić", "Шабан Шаулић".latinicom
    assert_equal "elektrodistribucija", "електродистрибуција".latinicom
    assert_equal "Đurđevak", "Ђурђевак".latinicom
    assert_equal "Latinica", "Latinica".latinicom
    assert_equal '[]2#}(,.);2@$"', '[]2#}(,.);2@$"'.latinicom
  end

  it 'preslovanjava u ošišanu latinicu' do
    assert_equal("Zeleznica Srbije", "Железница Србије".latinicom_ascii)
  end
end
