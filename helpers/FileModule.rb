require 'yaml'

require './entities/book.rb'
require './entities/order.rb'
require './entities/reader.rb'
require './entities/author.rb'

module FileModule
  
  def save
    return unless check_it
    File.open('./data.yml','w+') do |f|
    f.write(self.to_yaml)
    end
  end    

  def read
    YAML.load(File.open('./data.yml')) if check_it
  end
  
  def check_it
    raise "Not found data.yml" if File.exists?('./data.yml').nil?
    File.exists?('./data.yml')
  end 

  def seed
    books << Book.new('Depeache Mode', 'Sergii Jadan')
    books << Book.new('The Hunger Games', 'Suzanne Collins')
    books << Book.new('Romeo and Juliet', 'William Shakespeare')
    books << Book.new('Macbeth', 'William Shakespeare')
    
    orders << Order.new('Depeache Mode', 'User 1', '2016-06-10')
    orders << Order.new('Depeache Mode', 'User 2', '2016-06-11')
    orders << Order.new('The Hunger Games', 'User 1', '2016-06-09')
    orders << Order.new('Romeo and Juliet', 'User 3', '2016-06-09')
    
    readers << Reader.new('User 1', 'user1@user.com', 'London', 'Blue', '55')
    readers << Reader.new('User 2', 'user2@user.com', 'London', 'Green', '12')
    readers << Reader.new('User 3', 'user3@user.com', 'London', 'Red', '255')
    
    authors << Author.new('Sergii Jadan', 'Ukrainian poet, novelist, essayist, and translator.')
    authors << Author.new('Suzanne Collins', 'American television writer and novelist')
    authors << Author.new('William Shakespeare', 'English poet and playwright')
    
    save
  end  

end  