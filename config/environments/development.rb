# frozen_string_literal: true

Rails.application.configure do
  # Verifies that versions and hashed value of the package contents in the
  # project's package.json
  config.webpacker.check_yarn_integrity = true

  config.cache_classes = false
  config.eager_load = false
  config.consider_all_requests_local = true

  if Rails.root.join("tmp/caching-dev.txt").exist?
    config.action_controller.perform_caching = true

    config.cache_store = :memory_store
    config.public_file_server.headers = {
      "Cache-Control" => "public, max-age=#{2.days.seconds.to_i}"
    }
  else
    config.action_controller.perform_caching = false
    config.cache_store = :null_store
  end

  # Mailer settings
  config.action_mailer.default_url_options = { host: "localhost", port: 3000 }
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.perform_caching = false
  config.action_mailer.perform_deliveries = true
  config.action_mailer.raise_delivery_errors = false
  config.action_mailer.smtp_settings = {
    address:              "smtp.gmail.com",
    port:                 587,
    domain:               "gmail.com",
    user_name:            ENV["EMAIL_USERNAME"],
    password:             ENV["EMAIL_PASSWORD"],
    authentication:       "plain",
    enable_starttls_auto: true
  }

  config.active_support.deprecation = :log
  config.active_record.migration_error = :page_load
  config.assets.debug = true
  config.assets.quiet = true
  config.file_watcher = ActiveSupport::EventedFileUpdateChecker

  config.paperclip_defaults = {
    storage: :s3,
    s3_host_name: "s3-#{ENV['AWS_REGION']}.amazonaws.com",
    s3_region: ENV["AWS_REGION"],
    s3_credentials: {
      bucket: ENV["AWS_BUCKET_NAME"],
      access_key_id: ENV["AWS_ACCESS_KEY_ID"],
      secret_access_key: ENV["AWS_SECRET_ACCESS_KEY"]
    }
  }

  Paperclip.options[:command_path] = "/usr/local/bin/"
end
