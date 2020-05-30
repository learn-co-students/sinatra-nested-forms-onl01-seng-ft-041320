class Pirate

attr_accessor :name, :weight, :height, :ships
@@all = []

def initialize(pirate_details) 
    @name = pirate_details[:name]
    @weight = pirate_details[:weight]
    @height = pirate_details[:height]
    @ships = pirate_details[:ships]
    @@all << self 
end

def self.all
    @@all
end 
end 
