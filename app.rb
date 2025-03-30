require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:homepage)
end

# get("/dice/2/6") do
#   @rolls = []

#   2.times do
#     die = rand(1..6)

#     @rolls.push(die)
#   end

#   erb(:two_six)
# end

# get("/dice/2/10") do
#   @rolls = []

#   2.times do
#     die = rand(1..10)

#     @rolls.push(die)
#   end

#   erb(:two_ten)
# end

# get("/dice/1/20") do
#   @rolls = []

#   1.times do
#     die = rand(1..20)

#     @rolls.push(die)
#   end

#   erb(:one_twenty)
# end

# get("/dice/5/4") do
#   @rolls = []

#   5.times do
#     die = rand(1..4)

#     @rolls.push(die)
#   end

#   erb(:five_four)
# end

get("/dice/:die1/:die2") do
  @num_die1 = params.fetch("die1").to_i
  @num_die2 = params.fetch("die2").to_i

  @dice = Array.new(@num_die1) {rand(1..@num_die2)}
  @sum = @dice.sum

  @outcome = "You rolled a total of #{@sum}."

  erb(:flexible)
end
