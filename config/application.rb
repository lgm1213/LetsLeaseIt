require_relative 'boot'
require 'rails/all'
# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module LetsLeaseIt
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    # config.load_defaults 5.1
    # unless Rails.env.test?
		  # config.paperclip_defaults = {
		  #   storage: :s3,
		  #   s3_credentials: {
		  #     bucket: ENV['S3_BUCKET_NAME'],
		  #     access_key_id: ENV['AWS_ACCESS_KEY'],
		  #     secret_access_key: ENV['AWS_SECRET_KEY'],
    #           s3_region: ENV['AWS_REGION']
		  #   },
    #     :url =>':s3_domain_url',
    #     :path => '/:class/:attachment/:id_partition/:style/:filename'
		  # }
    # end

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
