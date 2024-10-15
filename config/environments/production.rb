# require "active_support/core_ext/integer/time"

# Rails.application.configure do
#   # Settings specified here will take precedence over those in config/application.rb.

#   # Code is not reloaded between requests.
#   config.enable_reloading = false

#   # Eager load code on boot. This eager loads most of Rails and
#   # your application in memory, allowing both threaded web servers
#   # and those relying on copy on write to perform better.
#   # Rake tasks automatically ignore this option for performance.
#   config.eager_load = true

#   # Full error reports are disabled and caching is turned on.
#   config.consider_all_requests_local = false
#   config.action_controller.perform_caching = true

#   # Ensures that a master key has been made available in ENV["RAILS_MASTER_KEY"], config/master.key, or an environment
#   # key such as config/credentials/production.key. This key is used to decrypt credentials (and other encrypted files).
#   # config.require_master_key = true

#   # Disable serving static files from `public/`, relying on NGINX/Apache to do so instead.
#   config.public_file_server.enabled = false

#   # Compress CSS using a preprocessor.
#   # config.assets.css_compressor = :sass

#   # Do not fall back to assets pipeline if a precompiled asset is missed.
#   config.assets.compile = false

#   # Enable serving of images, stylesheets, and JavaScripts from an asset server.
#   # config.asset_host = "http://assets.example.com"

#   # Specifies the header that your server uses for sending files.
#   # config.action_dispatch.x_sendfile_header = "X-Sendfile" # for Apache
#   # config.action_dispatch.x_sendfile_header = "X-Accel-Redirect" # for NGINX

#   # Mount Action Cable outside main process or domain.
#   # config.action_cable.mount_path = nil
#   # config.action_cable.url = "wss://example.com/cable"
#   # config.action_cable.allowed_request_origins = [ "http://example.com", /http:\/\/example.*/ ]

#   # Assume all access to the app is happening through a SSL-terminating reverse proxy.
#   # Can be used together with config.force_ssl for Strict-Transport-Security and secure cookies.
#   # config.assume_ssl = true

#   # Force all access to the app over SSL, use Strict-Transport-Security, and use secure cookies.
#   config.force_ssl = true

#   # Log to STDOUT by default
#   config.logger = ActiveSupport::Logger.new(STDOUT)
#     .tap  { |logger| logger.formatter = ::Logger::Formatter.new }
#     .then { |logger| ActiveSupport::TaggedLogging.new(logger) }

#   # Prepend all log lines with the following tags.
#   config.log_tags = [ :request_id ]

#   # "info" includes generic and useful information about system operation, but avoids logging too much
#   # information to avoid inadvertent exposure of personally identifiable information (PII). If you
#   # want to log everything, set the level to "debug".
#   config.log_level = ENV.fetch("RAILS_LOG_LEVEL", "info")

#   # Use a different cache store in production.
#   # config.cache_store = :mem_cache_store

#   # Use a real queuing backend for Active Job (and separate queues per environment).
#   # config.active_job.queue_adapter = :resque
#   # config.active_job.queue_name_prefix = "dnn_web_production"

#   config.action_mailer.perform_caching = false

#   # Ignore bad email addresses and do not raise email delivery errors.
#   # Set this to true and configure the email server for immediate delivery to raise delivery errors.
#   # config.action_mailer.raise_delivery_errors = false

#   # Enable locale fallbacks for I18n (makes lookups for any locale fall back to
#   # the I18n.default_locale when a translation cannot be found).
#   config.i18n.fallbacks = true

#   # Don't log any deprecations.
#   config.active_support.report_deprecations = false

#   # Do not dump schema after migrations.
#   config.active_record.dump_schema_after_migration = false

#   # Enable DNS rebinding protection and other `Host` header attacks.
#   # config.hosts = [
#   #   "example.com",     # Allow requests from example.com
#   #   /.*\.example\.com/ # Allow requests from subdomains like `www.example.com`
#   # ]
#   # Skip DNS rebinding protection for the default health check endpoint.
#   # config.host_authorization = { exclude: ->(request) { request.path == "/up" } }
#   config.active_storage.service = :cloudinary

#   config.action_mailer.delivery_method = :smtp

#   config.action_mailer.smtp_settings = {
#     address: 'smtp.gmail.com',
#     port: 587,
#     domain: 'gmail.com',
#     user_name: ENV['GMAIL_USERNAME'],
#     password: ENV['GMAIL_PASSWORD'],
#     authentication: 'plain',
#     enable_starttls_auto: true
#   }

#   config.action_mailer.default_url_options = { host: 'yourdomain.com' }
#   # config.action_mailer.default_url_options = { host: 'yourdomain.com' }

#   config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }
# end

require "active_support/core_ext/integer/time"

Rails.application.configure do
  # Code is not reloaded between requests.
  config.enable_reloading = false

  # Eager load code on boot for better performance.
  config.eager_load = true

  # Full error reports are disabled and caching is enabled.
  config.consider_all_requests_local = false
  config.action_controller.perform_caching = true

  # Ensure that a master key is made available to decrypt credentials.
  config.require_master_key = true

  # Disable serving static files from `public/`, relying on NGINX/Apache to do so.
  config.public_file_server.enabled = true

  # Compress CSS using a preprocessor.
  config.assets.css_compressor = :sass

  # Do not fall back to assets pipeline if a precompiled asset is missed.
  config.assets.compile = false

  config.assets.digest = true

  config.assets.version = '1.0'

  config.assets.enabled = true

  config.assets.precompile += %w( *.css *.js *.scss)


  # Enable serving of images, stylesheets, and JavaScripts from an asset server (optional).
  # config.asset_host = "http://assets.example.com"

  # Set the header your server uses for sending files (optional).
  # config.action_dispatch.x_sendfile_header = "X-Sendfile" # for Apache
  # config.action_dispatch.x_sendfile_header = "X-Accel-Redirect" # for NGINX

  # Force all access to the app over SSL.
  config.force_ssl = true

  # Log to STDOUT by default.
  config.logger = ActiveSupport::Logger.new(STDOUT)
    .tap  { |logger| logger.formatter = ::Logger::Formatter.new }
    .then { |logger| ActiveSupport::TaggedLogging.new(logger) }

  # Prepend all log lines with request IDs.
  config.log_tags = [ :request_id ]

  # Set log level to info by default.
  config.log_level = ENV.fetch("RAILS_LOG_LEVEL", "info")

  # Use a real queuing backend for Active Job.
  config.active_job.queue_adapter = :inline  # or :resque, :delayed_job, etc.

  # Use a different cache store in production if needed.
  config.cache_store = :mem_cache_store

  # Email configuration.
  config.action_mailer.perform_caching = false
  config.action_mailer.raise_delivery_errors = true  # Set to true to raise errors in production
  # config.action_mailer.smtp_settings = {
  #   address: 'smtp.gmail.com',
  #   port: 587,
  #   domain: 'yourdomain.com',  # Update to your domain
  #   user_name: ENV['GMAIL_USERNAME'],
  #   password: ENV['GMAIL_PASSWORD'],
  #   authentication: 'plain',
  #   enable_starttls_auto: true
  # }

  config.action_mailer.smtp_settings = {
  address:              'smtp-relay.sendinblue.com',
  port:                 587,
  user_name:            'dorin@dnnovationconstruction.co.uk',
  password:             ENV['BREVO'],
  authentication:       'plain',
  enable_starttls_auto: true
}

  config.action_mailer.default_url_options = { host: 'www.dnnovationconstruction.co.uk' }

  # Enable locale fallbacks for I18n.
  config.i18n.fallbacks = true

  # Don't log any deprecations.
  config.active_support.report_deprecations = false

  # Do not dump schema after migrations.
  config.active_record.dump_schema_after_migration = false

  # Enable DNS rebinding protection and other host header attacks.
  # config.hosts = ["example.com"]  # Update with your domain
  # config.host_authorization = { exclude: ->(request) { request.path == "/up" } }

  config.active_storage.service = :cloudinary
end
