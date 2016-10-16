require './book.rb'
require './order.rb'
require './reader.rb'
require './author.rb'

class Library
  attr_accessor :orders, :books, :readers, :authors
  
  def initialize(params = {})
    @books = params[:books]
    @orders = params[:orders]
    @readers = params[:readers]
    @authors = params[:authors]
  end

  def top_readers
  end  
  
  def top_books
  end
  
  def top_books_statistic
  end  
  
end    