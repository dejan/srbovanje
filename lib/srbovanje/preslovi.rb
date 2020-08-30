# encoding: utf-8

require 'ffi'

module Preslovi
  extend FFI::Library

  PLATFORM = "#{Gem::Platform.local.cpu}-#{Gem::Platform.local.os}"

  ffi_lib "#{__dir__}/../../ext/lib/preslovi.#{PLATFORM}.so"

  attach_function :latinicom, [:string], :string
  attach_function :latinicom_ascii, [:string], :string

  extend self
end
