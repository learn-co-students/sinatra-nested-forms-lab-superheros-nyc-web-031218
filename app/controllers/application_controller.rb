require 'sinatra/base'

class App < Sinatra::Base

  set :views, Proc.new { File.join(root, "../views/") }

  get '/' do
    erb :index
  end
  post '/' do
    @team = Team.create(params[:team])
    @sh1 = SuperHero.create(params[:sh1])
    @sh2 = SuperHero.create(params[:sh2])
    @sh3 = SuperHero.create(params[:sh3])
    @sh1.team_id = @team.id
    @sh2.team_id = @team.id
    @sh3.team_id = @team.id
    erb :show
  end

end
