# -*- encoding: utf-8 -*-

require File.expand_path("../test_helper", __FILE__)

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

  def test_recode_sr_ascii_latin!
    str = "ноћ"
    assert_equal("noc", str.recode_sr_ascii_latin!)
    assert_equal("noc", str)
  end

  def test_abeceda
    assert_equal(30, String.abeceda.size)
  end
  
  def test_slugify
    assert_equal("zeleznica-srbije", "Железница Србије".slugify)
    assert_equal("kako-je", "Kako je?".slugify)
    assert_equal("mis-zaba", "miš,žaba".slugify)
    assert_equal("mis-zaba", "миш, жаба".slugify)
    assert_equal("agencija", " aGenCIJa   ".slugify)
    assert_equal("vamo-tamo", "vamo-tamo".slugify)
    assert_equal("vamo-tamo", "vamo  tamo".slugify)
    assert_equal("pokvarenspejs", "Pokvaren Spejs".slugify(nil))
    assert_equal("abcdeavioni", "a b c d e avioni".slugify(''))
    assert_equal("-", "び諸芸や奇抜な衣装".slugify)
    assert_equal("-", "び諸芸や奇 抜な衣 装 び諸芸や 奇抜な衣装".slugify)
    assert_equal("", "び諸芸や奇抜な衣装".slugify('-', false))
    assert_equal("-", "び諸芸や奇抜な衣装".slugify('-', true))
    assert_equal("+", "び諸芸や奇抜な衣装 び諸芸や奇抜な衣装".slugify('+'))
    assert_equal("ako-ako", 'ako, ako'.slugify)
    assert_equal("ako-ako", 'ako,ako'.slugify)
    assert_equal("ako-ako", 'ako ako'.slugify)
  end
end
