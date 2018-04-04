require 'sinatra/base'
require 'pry'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    # get '/' do
    #   erb :index
    # end

    get '/' do
      erb :super_hero
    end

    get '/superhero' do
      erb :whatevr
    end



    post '/teams' do
      @params = params
      # binding.pry
      erb :team
    end



end
