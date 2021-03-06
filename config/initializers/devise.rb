require 'devise'
Devise.setup do |config|
  config.omniauth :google_apps, :domain => "#{(ENV['GOOGLE_APPS_AUTH_DOMAIN'] || 'crowdint.com')}",
      :strategy => OmniAuth::Strategies::GoogleApps

  config.warden { |manager| manager.failure_app = CrowdintAuth::Devise::FailureApp }
end
