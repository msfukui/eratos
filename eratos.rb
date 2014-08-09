#!/usr/bin/env ruby

require_relative 'lib/eratos'

number = Integer(ARGV[0])

puts Eratos.new(number).print
