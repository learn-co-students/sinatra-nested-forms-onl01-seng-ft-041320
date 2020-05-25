class Pirate
    attr_accessor :name, :weight, :height
    @@all = []

    def initialize(hash)
        hash.each do |k, v|
            self.send("#{k}=", v) unless k == "ships"
        end
        @@all << self
    end

    def self.all
        @@all
    end

    def self.clear
        @@all = []
    end
    
end