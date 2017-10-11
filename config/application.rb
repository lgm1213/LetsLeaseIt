require_relative 'boot'
require 'rails/all'
# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module LetsLeaseIt
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1
    unless Rails.env.test?
		  config.paperclip_defaults = {
		    storage: :s3,
		    s3_credentials: {
		      bucket: Rails.application.secrets.aws_bucket_name,
		      access_key_id: Rails.application.secrets.aws_access_key,
		      secret_access_key: Rails.application.secrets.aws_secret_key
		    }
		  }
    end

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
