require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

get '/' do 
  erb :super_hero
end 

   post '/teams' do 
 @teams = Teams.new(name: params[:team][:name], motto: params[:team][:motto])
  members = params[:team][:members]
  
  members.each do |members_det|
  @members = Heroes.new(name: members_det[:name], power: members_det[:power], biography: members_det[:bio])
     end 
 
     @superheroe = Heroes.all 
  
  erb :team 
   end
   
end
