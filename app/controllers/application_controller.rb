require 'sinatra/base'

class App < Sinatra::Base

  # set :views, Proc.new { File.join(root, "../views/") }

  configure do
    set :views, 'app/views'
  end


  get '/' do
    erb :index
  end

  # get '/teams' do
  #   @teams = Team.all
  #   erb :index
  # end

  post '/teams' do
    @team = Team.new(params[:team][:name], params[:team][:motto])

    params[:team][:heroes].each do |hero|
      @hero = Hero.new(hero[:name], hero[:power], hero[:biography])
      @hero.team = @team
    end

    redirect to "/teams"
  end

  get '/teams' do
    @team = Team.all.last
    @heroes = Hero.find_by_team(@team)
    erb :team
  end

  get '/teams/new' do
    erb :new
  end


  # get '/teams/:id' do
  #   @team = Team.all.find do |team|
  #     team.id = params[:id]
  #   end
  #   erb :show
  # end
  #
  # get '/teams/:id/edit' do
  #   @team = Team.all.find do |team|
  #     team.id = params[:id]
  #   end
  #   erb :edit
  # end
  #
  #
  #   # post '/teams/:id' do
  #   #   binding.pry
  #   #
  #   #   @team = team.find(params[:id])
  #   #   # @team.name = params[:name]
  #   #   # @team.ingredients = params[:ingredients]
  #   #   # @team.cook_time = params[:cook_time]
  #   #   # @team.save
  #   #   @team.update(name: params[:name], ingredients: params[:ingredients], cook_time: params[:cook_time])
  #   #   redirect "/teams/#{@team.id}"
  #   # end
  #
  # post '/teams/:id' do  #updates a team
  #   @team = Team.find_by_id(params[:id])
  #   @team.name = params[:name]
  #   @team.ingredients = params[:ingredients]
  #   @team.cook_time = params[:cook_time]
  #   @team.save
  #   redirect to "/teams/#{@team.id}"
  # end
  #
  #
  #
  #   delete 'teams/:id/delete' do
  #     binding.pry
  #     @team = Team.find(params[:id])
  #     @team.delete
  #     redirect '/teams'
  #   end

end
