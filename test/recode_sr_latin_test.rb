require File.dirname(__FILE__) + '/test_helper'

class TestStringExt < Test::Unit::TestCase
  def test_recode_sr_latin
    # plain
    assert_equal("NJEGOŠ", "ЊЕГОШ".recode_sr_latin)
    assert_equal("Šaban Šaulić", "Шабан Шаулић".recode_sr_latin)
    assert_equal("elektrodistribucija", "електродистрибуција".recode_sr_latin)
    assert_equal("Đurđevak", "Ђурђевак".recode_sr_latin)
    
    # non_convertive_characters
    assert_equal("Latinica", "Latinica".recode_sr_latin)
    assert_equal('[]2#}(,.);2@$"', '[]2#}(,.);2@$"'.recode_sr_latin)
  end

  def test_recode_sr_ascii_latin
    assert_equal("Zeleznica Srbije", "Железница Србије".recode_sr_ascii_latin)
    assert_equal("Cokolada", "Čokolada".recode_sr_ascii_latin)
  end
end
