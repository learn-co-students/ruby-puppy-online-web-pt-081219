
require 'pry'

class Dog
  attr_accessor :name
  
  @@all = []
  @@names = []
  
  def initialize (name)
    @name = name
    save
    
    @@names << name
  end
  
  def self.all
    @@all
  end
  
  def self.clear_all
    all.clear
  end
  
  def self.print_all
    puts @@all.map{|element| element.name}
  end
  
  
  def save
    @@all << self
  end
end