require "handlebars_assets/version"
require "handlebars_assets/config"

module HandlebarsAssets
  extend Config

  PATH = File.expand_path("../../vendor/assets/javascripts", __FILE__)

  def self.path
    PATH
  end

  autoload(:Handlebars, 'handlebars_assets/handlebars')
  autoload(:TiltHandlebars, 'handlebars_assets/tilt_handlebars')

  if defined?(Rails)
    require 'handlebars_assets/engine'
  else
    require 'sprockets'
    Sprockets.register_engine ".#{HandlebarsAssets.template_extension}", TiltHandlebars
  end
end
