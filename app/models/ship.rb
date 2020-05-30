class Ship

    attr_accessor :name, :booty, :type 
    @@all = []

    def initialize(ship_details)
        @name = ship_details[:name]
        @booty = ship_details[:booty]
        @type = ship_details[:type]
        @@all << self
    end

    def self.all
        @@all
    end 

    def self.clear
        @@all.clear
    end 
end
