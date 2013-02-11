require 'compass'
require 'slim'

set :css_dir,     'assets/stylesheets'
set :js_dir,      'assets/javascripts'
set :images_dir,  'assets/images'

Slim::Engine.set_default_options :pretty => true

compass_config do | config |
  config.preferred_syntax   = :sass
  config.output_style       = :nested
  config.sass_options       = { :line_comments => true }
end

configure :build do
end