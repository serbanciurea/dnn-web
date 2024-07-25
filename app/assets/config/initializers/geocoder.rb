Geocoder.configure(
  timeout: 15,                 # geocoding service timeout (secs)
  lookup: :nominatim,          # name of geocoding service (symbol)
  ip_lookup: :ipinfo_io,       # name of IP address geocoding service (symbol)
  language: :en,               # ISO-639 language code
  use_https: true,             # use HTTPS for lookup requests? (if supported)
  units: :mi,                  # :km for kilometers or :mi for miles
  distances: :linear,          # :spherical or :linear
  logger: Rails.logger,        # use Rails logger
  http_headers: { 'User-Agent' => 'MyApp/1.0 (contact@myapp.com)', 'Referer' => 'http://127.0.0.1:3000/' },
  always_raise: :all           # raise all exceptions for debugging
)
