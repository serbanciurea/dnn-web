class Job < ApplicationRecord
  # belongs_to :user
  validates :title, :description, :location, :salary, presence: true
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
