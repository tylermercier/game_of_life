require 'rubygems'
require 'bundler/setup'
require 'test/unit'

# load library
Dir['./lib/*.rb'].each do |file|
  require './lib/' + File.basename(file, File.extname(file))
end

# run tests
Dir['./tests/*.rb'].each do |file|
  require './tests/' + File.basename(file, File.extname(file))
end