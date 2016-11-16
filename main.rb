require './helpers/FileModule.rb'
require_relative './library.rb'

FileModule.seed if FileModule.check_it

lib = FileModule.read

puts "Top reader: #{lib.top_reader}"

puts "Top book: #{ lib.top_book }"

puts "User orders statistic of tree popular book: #{ lib.top_books_statistic }"
