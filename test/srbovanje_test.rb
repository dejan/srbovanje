# encoding: utf-8

require 'test_helper'

describe Srbovanje do
  describe '::abeceda' do
    it 'vraca abecedu kao niz' do
      assert_equal 'B', Srbovanje.abeceda[1] 
    end

     it 'ima 30 slova' do
        assert_equal 30, Srbovanje.abeceda.size
     end
  end

  describe 'latinica_map' do
    it 'vraca potpunu mapu latinice' do
      assert_equal 'Š', Srbovanje.latinica_full_map['Ш']
    end
  end

  describe 'latinica_ascii_map' do
    it 'vraca mapu ascii latinice' do
      assert_equal 'dj', Srbovanje.latinica_ascii_map['ђ']
    end
  end
end

