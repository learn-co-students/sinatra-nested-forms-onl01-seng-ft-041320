class Pirate
  attr_reader :height, :name, :weight

  @@pirates = []

  def initialize(params)
    @name = params[:name]
    @weight = params[:weight]
    @height = params[:height]
    @@pirates << self
  end

  def self.all
    @@pirates
  end
end
