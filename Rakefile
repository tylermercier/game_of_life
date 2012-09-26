require 'rake'
require 'rspec/core/rake_task'
require 'game'

task :default => [:spec]

desc "runs the game of life application"
task :run , :grid do |t, args|
  grid = args["grid"].nil? ? 'default' : args["grid"]

  game = Game.new "./grids/#{grid}"
  game.draw

  5.times do
    game.progress
    game.draw
  end
end

RSpec::Core::RakeTask.new('spec')