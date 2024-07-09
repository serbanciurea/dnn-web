class Competency < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :expiration_date, presence: true
end
