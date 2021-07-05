
class Dog 
  @@all = Array.new 
  @@names = Array.new 
  
  def initialize(name)
  @name = name 
  @@names << @name
  self.save 
  end 
  
  def name 
  @name 
  end 
  
  def self.all 
  @@all
  end 
  
  def self.clear_all
  @@all.clear
  end 
  
  def self.print_all
  puts @@all.map{ |dog| dog.name }
  end 

  def save 
  @@all << self 
  end 

end 

