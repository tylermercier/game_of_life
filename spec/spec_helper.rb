ENV["ENVIRONMENT"] = "test"

# load library
Dir['./lib/*.rb'].each do |file|
  require './lib/' + File.basename(file, File.extname(file))
end