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
end

