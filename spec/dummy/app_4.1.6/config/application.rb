require File.expand_path('../boot', __FILE__)

# Pick the frameworks you want:
require "active_model/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "sprockets/railtie"
# require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module App416
  class Application < Rails::Application
    config.generators do |g|
      g.orm :active_record
      g.helper false
      g.assets false
      g.test_framework :rspec
      g.controller_specs false
    end
  end
end