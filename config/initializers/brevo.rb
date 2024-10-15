require 'sib-api-v3-sdk'

Brevo.configure do |config|
  config.api_key['api-key'] = ENV['BREVO']
end
