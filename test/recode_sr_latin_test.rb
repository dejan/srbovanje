require File.dirname(__FILE__) + '/test_helper'

class TestStringExt < Test::Unit::TestCase
  def test_recode_sr_latin
    # don't change argument
    str = "ЊЕГОШ"
    assert_equal("NJEGOŠ", str.recode_sr_latin)
    assert_equal("ЊЕГОШ", str)
    
    # plain
    assert_equal("NJEGOŠ", "ЊЕГОШ".recode_sr_latin)
    assert_equal("Šaban Šaulić", "Шабан Шаулић".recode_sr_latin)
    assert_equal("elektrodistribucija", "електродистрибуција".recode_sr_latin)
    assert_equal("Đurđevak", "Ђурђевак".recode_sr_latin)
    
    # non_convertive_characters
    assert_equal("Latinica", "Latinica".recode_sr_latin)
    assert_equal('[]2#}(,.);2@$"', '[]2#}(,.);2@$"'.recode_sr_latin)
  end

  def test_recode_sr_latin!
    str = "ноћ"
    assert_equal("noć", str.recode_sr_latin!)
    assert_equal("noć", str)
  end

  def test_recode_sr_ascii_latin
    str = "Железница Србије"
    assert_equal("Zeleznica Srbije", str.recode_sr_ascii_latin)
    assert_equal("Железница Србије", str)
  end

  def test_recode_sr_latin!
    str = "ноћ"
    assert_equal("noc", str.recode_sr_ascii_latin!)
    assert_equal("noc", str)
  end

  def test_abeceda
    assert_equal(30, String.abeceda.size)
  end
end
