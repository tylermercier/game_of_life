require 'rake'
#require 'spec/rake/spectask'
#

task :default => [:test, :run]

desc "runs the game of life application"
task :run do
  ruby "tasks/run.rb"
end

desc "runs all unit tests"
task :test do
  ENV["ENVIRONMENT"] = "test"
  ruby "tasks/test.rb"
end

# desc "Run all specs in spec directory"
# Spec::Rake::SpecTask.new do |task|
#   task.spec_opts = ['--options', "#{PROJECT_PATH}/spec/spec.opts"]
#   task.pattern   = "spec/**/*_spec.rb"  
# end