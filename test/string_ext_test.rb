# encoding: utf-8

require 'test_helper'

describe String do
  it 'preslovnjava u latinicu' do
    assert_equal "NJEGOŠ", "ЊЕГОШ".latinize
    assert_equal "Šaban Šaulić", "Шабан Шаулић".latinize
    assert_equal "elektrodistribucija", "електродистрибуција".latinize
    assert_equal "Đurđevak", "Ђурђевак".latinize
    assert_equal "Latinica", "Latinica".latinize
    assert_equal '[]2#}(,.);2@$"', '[]2#}(,.);2@$"'.latinize
  end

  it 'preslovanjava u ošišanu latinicu' do
    assert_equal("Zeleznica Srbije", "Железница Србије".latinize(:ascii))
  end
end
