require 'yaml'

require './entities/book.rb'
require './entities/order.rb'
require './entities/reader.rb'
require './entities/author.rb'
require './library'

module FileModule
  
  def self.save_data( data )
    if File.exists?('./data.yml')
      File.open('./data.yml','w+') do |f|
      f.write(data.to_yaml)
      end
    end
  end    

  def self.read_data
    if File.exists?('./data.yml')
      YAML.load(File.open('./data.yml'))
    end
  end
  
  def self.seed_data
    @lib = Library.new()
    
    @lib.books << Book.new('Depeache Mode', 'Sergii Jadan')
    @lib.books << Book.new('The Hunger Games', 'Suzanne Collins')
    @lib.books << Book.new('Romeo and Juliet', 'William Shakespeare')
    @lib.books << Book.new('Macbeth', 'William Shakespeare')
    
    @lib.orders << Order.new('Depeache Mode', 'User 1', '2016-06-10')
    @lib.orders << Order.new('Depeache Mode', 'User 2', '2016-06-11')
    @lib.orders << Order.new('The Hunger Games', 'User 1', '2016-06-09')
    @lib.orders << Order.new('Romeo and Juliet', 'User 3', '2016-06-09')
    
    @lib.readers << Reader.new('User 1', 'user1@user.com', 'London', 'Blue', '55')
    @lib.readers << Reader.new('User 2', 'user2@user.com', 'London', 'Green', '12')
    @lib.readers << Reader.new('User 3', 'user3@user.com', 'London', 'Red', '255')
    
    @lib.authors << Author.new('Sergii Jadan', 'Ukrainian poet, novelist, essayist, and translator.')
    @lib.authors << Author.new('Suzanne Collins', 'American television writer and novelist')
    @lib.authors << Author.new('William Shakespeare', 'English poet and playwright')
    
    self.save_data(@lib)
  end  
end  