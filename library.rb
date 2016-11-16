class Library
  attr_accessor :orders, :books, :readers, :authors
  
  def initialize()
    @books, @orders, @readers, @authors = [], [], [], []
  end

  def top_reader
    @orders.group_by(&:reader).max_by{|books, readers| readers.count }.first
  end  
  
  def top_book
    @orders.group_by(&:book).max_by{|orders| orders.count }.first
  end
  
  def top_books_statistic
    top = @orders.group_by(&:book).max_by(3){|orders| orders.count}
    top.map{|(book,orders)| orders}.flatten.map(&:reader).uniq.count
  end  
  
end    