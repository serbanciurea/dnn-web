Geocoder.configure(
  # Geocoding options
  timeout: 15,                 # geocoding service timeout (secs)
  lookup: :nominatim,         # name of geocoding service (symbol)
  ip_lookup: :ipinfo_io,      # name of IP address geocoding service (symbol)
  language: :en,              # ISO-639 language code
  use_https: true,            # use HTTPS for lookup requests? (if supported)
  units: :mi,                 # :km for kilometers or :mi for miles
  distances: :linear,
  logger: Rails.logger,
  http_headers: { 'User-Agent' => 'DNN/1.0 (contact@myapp.com)' }
)
