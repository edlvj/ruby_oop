require './helpers/FileModule.rb'

class Library
  include FileModule
  attr_accessor :orders, :books, :readers, :authors
  
  def initialize
    @books, @orders, @readers, @authors = [], [], [], []
  end

  def top_reader
    sort_by(:reader).first
  end  
  
  def top_book
    sort_by(:book).first
  end
  
  def top_books_statistic
    top = sort_by(:reader, 3)
    top.map{|(__ , order)| order}.flatten.map(&:reader).uniq.count
  end  
  
  def sort_by(entity, quant = nil)
    @orders.group_by( &entity ).max_by(quant){ |__ , order| order.count }
  end  
  
end    