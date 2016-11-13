require './helpers/FileModule.rb'
require_relative './library.rb'

lib = FileModule.read_data

if !lib
  FileModule.seed_data
  lib = FileModule.read_data
end

puts 'Top readers:'
puts lib.top_readers

puts 'Top books:'
puts lib.top_books

puts 'User orders statistic by one of tree popular book:'
puts lib.top_books_statistic
