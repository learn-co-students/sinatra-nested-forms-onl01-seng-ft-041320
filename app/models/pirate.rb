class Pirate
    attr_accessor :name, :weight, :height

    @@all_pirates = []

    def initialize(args)
        @name = args[:name]
        @weight = args[:weight]
        @height = args[:height]
        @@all_pirates << self
    end

    def self.all
        @@all_pirates
    end

end