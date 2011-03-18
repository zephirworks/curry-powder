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