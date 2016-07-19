Rails.application.configure do
  # Settings specified here will take precedence over those in config/application.rb

  # Code is not reloaded between requests.
  config.cache_classes = true

  # 高速化
  config.serve_static_assets = true
  config.static_cache_control = "public, max-age=31536000"

  # Eager load code on boot. This eager loads most of Rails and
  # your application in memory, allowing both threaded web servers
  # and those relying on copy on write to perform better.
  # Rake tasks automatically ignore this option for performance.
  config.eager_load = true

  # Full error reports are disabled and caching is turned on.
  config.consider_all_requests_local = false
  config.action_controller.perform_caching = true

  # Disable delivery errors
  config.action_mailer.raise_delivery_errors = false

  # No email in production log
  config.action_mailer.logger = nil

  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log

  # メール設定
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.smtp_settings = {
    address:              'smtp.sendgrid.net',
    port:                 '587',
    authentication:       :plain,
    user_name:            ENV['SENDGRID_USERNAME'],
    password:             ENV['SENDGRID_PASSWORD'],
    domain:               'heroku.com',
    enable_starttls_auto: true,
  }

end
