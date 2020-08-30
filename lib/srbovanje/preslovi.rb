# encoding: utf-8

require 'ffi'

module Preslovi
  extend FFI::Library

  ffi_lib 'ext/lib/preslovi.so'

  attach_function :latinicom, [:string], :string
  attach_function :latinicom_ascii, [:string], :string

  extend self
end
