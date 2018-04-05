require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/team' do
      @team_name = params[:team][:name]
      @team_motto = params[:team][:motto]
      @member1_name = params[:member1][:name]
      @member1_power = params[:member1][:power]
      @member1_bio = params[:member1][:bio]
      @member2_name = params[:member2][:name]
      @member2_power = params[:member2][:power]
      @member2_bio = params[:member2][:bio]
      @member3_name = params[:member3][:name]
      @member3_power = params[:member3][:power]
      @member3_bio = params[:member3][:bio]
      erb :team
    end
end
