require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module MinionsReservation
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    #config.assets.paths << Rails.root.join("app/assets/minions")
    #config.assets.precompile << "minions/minion-1.jpg"
    
    config.time_zone = 'Brasilia'
    config.assets.paths << Rails.root.join('app', 'assets', 'minions')

    Dir.glob("#{Rails.root}/app/assets/images/**/").each do |path|
      config.assets.paths << path
    end
  end
end
