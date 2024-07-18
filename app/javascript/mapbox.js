import mapboxgl from 'mapbox-gl'; // Import Mapbox GL JS

document.addEventListener('DOMContentLoaded', () => {

  console.log('ham inteles');
  // Get the map element
  const mapElement = document.querySelector('[data-map-api-key-value]');
  if (!mapElement) return; // Exit if the element is not found

  // Extract data attributes from the map element
  const apiKey = mapElement.dataset.mapApiKeyValue;
  const markers = JSON.parse(mapElement.dataset.mapMarkersValue);

  // Set Mapbox access token
  mapboxgl.accessToken = apiKey;

  // Create a new map instance
  const map = new mapboxgl.Map({
    container: mapElement, // Container ID
    style: 'mapbox://styles/mapbox/streets-v10' // Map style
  });

  // Add markers to the map
  markers.forEach(marker => {
    new mapboxgl.Marker()
      .setLngLat([marker.longitude, marker.latitude])
      .addTo(map);
  });

  // Optionally, set the map's center and zoom
  if (markers.length) {
    const bounds = new mapboxgl.LngLatBounds();
    markers.forEach(marker => bounds.extend([marker.longitude, marker.latitude]));
    map.fitBounds(bounds, { padding: 20 });
  }
});
