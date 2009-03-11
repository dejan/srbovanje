require File.dirname(__FILE__) + '/test_helper'

class TestRecodeSrLating < Test::Unit::TestCase
  def test_conversion
    assert_equal("NJEGOŠ", "ЊЕГОШ".recode_sr_latin)
    assert_equal("Šaban Šaulić", "Шабан Шаулић".recode_sr_latin)
    assert_equal("elektrodistribucija", "електродистрибуција".recode_sr_latin)
  end

  def test_non_convertive_characters
    assert_equal("Latinica", "Latinica".recode_sr_latin)
    assert_equal('[]2#}(,.);2@$"', '[]2#}(,.);2@$"'.recode_sr_latin)
  end
end
