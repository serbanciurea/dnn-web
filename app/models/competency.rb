class Competency < ApplicationRecord
  belongs_to :user

  has_one_attached :photo
  validates :name, :expiration_date, presence: true

  def photo_url
    Cloudinary::Utils.cloudinary_url(photo)  # Fetch the URL for the photo
  end

end
