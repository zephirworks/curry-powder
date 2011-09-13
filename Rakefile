require 'compass'
require 'compass/exec'

desc 'Build static CSS file'
task 'build' do
  options = { :sass_dir => "stylesheets",
              :css_dir => ".",
              :output_style => :compressed,
              :force => true }
  instance = Compass::Commands::UpdateProject.new(Dir.getwd, options)
  instance.execute
end

desc 'Build static CSS file for the example'
task 'example' do
  ::Compass.configuration.load Pathname.new(".").realpath
  options = { :sass_dir => "example",
              :css_dir => "example",
              :output_style => :compressed,
              :force => true }
  instance = Compass::Commands::UpdateProject.new(Dir.getwd, options)
  instance.execute
end
