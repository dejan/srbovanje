# encoding: utf-8

require 'test_helper'

describe String do
  it 'preslovnjava u latinicu' do
    assert_equal "NJEGOŠ", "ЊЕГОШ".na_latinici
    assert_equal "Šaban Šaulić", "Шабан Шаулић".na_latinici
    assert_equal "elektrodistribucija", "електродистрибуција".na_latinici
    assert_equal "Đurđevak", "Ђурђевак".na_latinici
    assert_equal "Latinica", "Latinica".na_latinici
    assert_equal '[]2#}(,.);2@$"', '[]2#}(,.);2@$"'.na_latinici
  end

  it 'preslovanjava u ošišanu latinicu' do
    assert_equal("Zeleznica Srbije", "Железница Србије".na_latinici(:ascii))
  end
end
