class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :first_name, :last_name, :adress, presence: true

  after_initialize :set_default_admin, if: :new_record?

  # geocoded_by :address, params: { countrycodes: 'gb' }
  # after_validation :geocode, if: ->(obj){ obj.address.present? and obj.address_changed? }

  def set_default_admin
    self.admin ||= false
  end

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

end
