require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:homepage)
end

get ("/rock") do
  @our_move = "rock"
  moves = ["rock", "paper", "scissors"]
  @your_move = moves.sample

  if @your_move == "rock"
    @outcome = "tied"
  elsif @your_move == "paper"
    @outcome = "lost"
  elsif @your_move == "scissors"
    @outcome = "won"
  end

  erb(:rps)
end

get ("/paper") do
  @our_move = "paper"
  moves = ["rock", "paper", "scissors"]
  @your_move = moves.sample

  if @your_move == "rock"
    @outcome = "won"
  elsif @your_move == "paper"
    @outcome = "tied"
  elsif @your_move == "scissors"
    @outcome = "lost"
  end

  erb(:rps)
end

get ("/scissors") do
  @our_move = "scissors"
  moves = ["rock", "paper", "scissors"]
  @your_move = moves.sample

  if @your_move == "rock"
    @outcome = "lost"
  elsif @your_move == "paper"
    @outcome = "won"
  elsif @your_move == "scissors"
    @outcome = "tied"
  end

  erb(:rps)
end
