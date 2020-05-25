require './environment'

module FormsLab
  class App < Sinatra::Base
    
    get '/' do
      erb :root
    end
    
    get '/new' do
      erb :'pirates/new'
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])
      Ship.new(params[:pirate][:ships][0])
      Ship.new(params[:pirate][:ships][1])
     
      @ships = Ship.all
      
      erb :'pirates/show'
    end
  end
end