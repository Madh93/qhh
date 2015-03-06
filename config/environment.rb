# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Qhh::Application.initialize!


ActionMailer::Base.smtp_settings = {
    address: ENV["SMTP_SERVER"],
    openssl_verify_mode: OpenSSL::SSL::VERIFY_NONE,
    port: ENV["SMTP_PORT"].to_i,
    domain: ENV["MAILER_DOMAIN"],
    authentication: "plain",
    enable_starttls_auto: true,
    user_name: ENV["SMTP_USER"],
    password: ENV["SMTP_PWD"]
}