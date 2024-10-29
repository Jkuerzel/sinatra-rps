require "sinatra"
require "sinatra/reloader"

rps=["rock","paper","scissors"]

wlt_matrix = [
  ["tied!", "lost!", "won!"],
  ["won!", "tied!", "lost!"],
  ["lost!", "won!", "tied!"]
]

get("/") do
  erb(:rule)
end

get("/rock") do
  own_choise_i=0
  opp_choise_i=rand(0..2)
  @opp_choise=rps.at(opp_choise_i)
  @wlt=wlt_matrix[own_choise_i][opp_choise_i]

  erb(:rock)
end

get("/paper") do
  own_choise_i=1
  opp_choise_i=rand(0..2)
  @opp_choise=rps.at(opp_choise_i)
  @wlt=wlt_matrix[own_choise_i][opp_choise_i]
  erb(:paper)
end

get("/scissors") do
  own_choise_i=2
  opp_choise_i=rand(0..2)
  @opp_choise=rps.at(opp_choise_i)
  @wlt=wlt_matrix[own_choise_i][opp_choise_i]
  erb(:scissors)
end
