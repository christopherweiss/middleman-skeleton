require 'compass'
require 'slim'
require 'coffee-script'

set :css_dir,     'assets/stylesheets'
set :js_dir,      'assets/javascripts'
set :images_dir,  'assets/images'

activate :directory_indexes
activate :i18n, :mount_at_root => :en

Slim::Engine.set_default_options :pretty => true

compass_config do | config |
  config.preferred_syntax   = :sass
  config.output_style       = :nested
  config.sass_options       = { :line_comments => true }
end

configure :build  do |deploy|
  deploy.method = :rsync
  deploy.user   = ""
  deploy.host   = ""
  deploy.path   = ""
  deploy.clean  = true
  deploy.after_build = true
end

# ---------------------------
# git ignore
# ---------------------------
ignore "**/README.md"