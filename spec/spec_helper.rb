require 'rspec'

RSpec.configure do |config|
  config.color_enabled = true
  config.formatter = 'documentation'
end

# load library
# Dir['./lib/*.rb'].each do |file|
#   require './lib/' + File.basename(file, File.extname(file))
# end