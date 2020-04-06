require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

get '/' do 
  erb :super_hero
end 

   post '/teams' do 
  # binding.pry
 @team_name = params[:team][:name]
 
 @team_motto = params[:team][:motto]
  @members = params[:team][:members]
  @hero_name =[]
  @hero_power = []
  @hero_bio = []
  
  
  
    @members.collect do |members_det|
  @hero_name<< members_det[:name] 
   @hero_power<<  members_det[:power] 
   @hero_bio<<  members_det[:bio]
  
     end 

    # @superheroe = Heroes.all 
  # binding.pry
  erb :team 
   end
   
end
