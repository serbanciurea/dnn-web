Geocoder.configure(
  timeout: 15,
  lookup: :mapbox,
  api_key: ENV['MAPBOX_API_KEY'],  # Ensure your API key is set
  language: :en,
  use_https: true,
  units: :mi,
  distances: :linear,
  logger: Rails.logger,
  always_raise: :all
)
