require 'rubygems'
require 'bundler/setup'

Dir['./lib/*.rb'].each do |file|
  require './lib/' + File.basename(file, File.extname(file))
end

puts "Conway's Game of Life"

game = Game.new "./samples/test.txt"
game.draw

5.times do
  game.progress
  game.draw
end