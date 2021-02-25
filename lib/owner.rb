
require "cat.rb"
require "dog.rb"

  class Owner

    attr_reader :species, :name
    
    @@all = []
    
    def initialize(name)  
      @name = name
      @species = "human"
      @@all << self
    end 

 def say_species
    "I am a #{@species}."
  end

def self.all
  @@all
end

def self.count
  @@all.count
end

def self.reset_all
  @@all.clear
end

def cats
  Cat.all.select do |object|
  object.owner == self
  end
  end

  def dogs
    Dog.all.select do |object|
    object.owner == self
    end
    end

def buy_cat(name_of_cat)
 Cat.new(name_of_cat, self)
  end


  def buy_dog(name_of_dog)
    Dog.new(name_of_dog, self)
  end

def walk_dogs
self.dogs.each do |dogs|
  dogs.mood="happy"
end
end 

def feed_cats
  self.cats.each do |cats|
    cats.mood = "happy"
  end
end

def sell_pets
  self.cats.each do |cats|
    cats.mood="nervous"
    cats.owner=nil
  end
  self.dogs.each do |dogs|
    dogs.mood="nervous"
    dogs.owner=nil
  end
end

def list_pets
  "I have #{dogs.count} dog(s), and #{cats.count} cat(s)."
end
end