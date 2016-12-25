require_relative './library.rb'

lib = Library.new
lib.seed if lib.check_it

lib.read

puts "Top reader: #{ lib.top_reader }"
puts "Top book: #{ lib.top_book }"
puts "User orders statistic of tree popular book: #{ lib.top_books_statistic }"
