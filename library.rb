require './entities/book.rb'
require './entities/order.rb'
require './entities/reader.rb'
require './entities/author.rb'

class Library
  attr_accessor :orders, :books, :readers, :authors
  
  def initialize()
    @books, @orders, @readers, @authors = [], [], [], []
  end

  def top_readers
    @orders.group_by(&:reader).max_by{|readers| readers.count }.first
  end  
  
  def top_books
    @orders.group_by(&:book).max_by{|books, orders| orders.count}.first
  end
  
  def top_books_statistic
    @orders.group_by(&:book).max_by{|orders, readers| readers.count}.count
  end  
  
end    