require './environment'
require 'pry'

module FormsLab
  class App < Sinatra::Base

    get '/' do
      erb :root
    end

    get '/new' do
      erb :'pirates/new'
    end

    post "/pirates" do
      #binding.pry
      @ship_1 = Ship.new(params[:pirate][:ships][0][:name], params[:pirate][:ships][0][:type], params[:pirate][:ships][0][:booty])
      @ship_2 = Ship.new(params[:pirate][:ships][1][:name], params[:pirate][:ships][1][:type], params[:pirate][:ships][1][:booty])
      @pirate = Pirate.new(params[:pirate][:name], params[:pirate][:height], params[:pirate][:weight])
      erb :'pirates/show'
    end

  end
end
