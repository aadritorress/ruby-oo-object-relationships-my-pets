
class Dog

  attr_reader :name
  attr_accessor :owner, :mood
  @@all = []

def initialize(name, owner)
@name = name
@owner = owner 
@mood = "nervous"
@@all << self 
end 

def self.all
  @@all
end 





end

























# class Dog 

#   attr_reader :name
#   attr_accessor :owner, :mood
#   @@all = []

# def initialize(name, owner)
# @name = name
# @owner = owner 
# @mood = "nervous"
# @@all << self 
# end 

# def self.all
#   @@all
# end 



# end 















  # class Dog
  
  #   attr_accessor :mood, :owner
  #   attr_reader :name
    
  #   @@all = []
    
  #    def initialize(name, owner)
  #     @name = name
  #     @owner = owner
  #     @mood = "nervous"
  #     @@all << self 
  #   end 
    
  #   def self.all
  #     @@all
  #   end 
    
  # end