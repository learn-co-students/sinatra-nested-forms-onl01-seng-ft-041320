class Pirate
    attr_accessor :name, :weight, :height
    @@all = []
    def initialize(name, weight, height)
        @name = name
        @height = height
        @weight = weight
    end
    def self.all
        @@all
    end
    def self.clear
        @@all.clear
    end
end