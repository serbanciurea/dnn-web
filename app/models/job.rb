class Job < ApplicationRecord
  # belongs_to :user
  validates :title, :location, presence: true
  # geocoded_by :location
  # after_validation :geocode, if: :will_save_change_to_location?
  # before_save :geocode, if: :will_save_change_to_location?
  # after_validation :geocode, if: :will_save_change_to_location?
  # after_save :geocode_location, if: :location_changed?

  # private

  # def geocode_location
  #   return if location.blank?

  #   results = Geocoder.search(location)
  #   if results.present?
  #     self.update(latitude: results.first.latitude, longitude: results.first.longitude)
  #   else
  #     Rails.logger.error "Geocoding failed for location #{location}"
  #   end
  # rescue StandardError => e
  #   Rails.logger.error "Geocoding error: #{e.message}"
  # end
end
