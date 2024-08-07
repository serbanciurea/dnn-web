class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         after_initialize :set_default_driver, if: :new_record?

         after_initialize :set_default_approved, if: :new_record?

  has_many :competencies, inverse_of: :user, dependent: :destroy
  accepts_nested_attributes_for :competencies, allow_destroy: true

  validates :pts_number, length: { is: 7 }
  validates :phone, length: { is: 11 }

  validates :sponsor, inclusion: { in: %w[primary secondary] }

  validates :driver, inclusion: { in: [true, false] }

  geocoded_by :address
  before_save :geocode, if: :will_save_change_to_address?
  after_validation :geocode, if: :will_save_change_to_address?

  validates :first_name, :last_name, :address, :sponsor, :pts_number, :phone, presence: true

  after_initialize :set_default_admin, if: :new_record?

  # geocoded_by :address, params: { countrycodes: 'gb' }
  # after_validation :geocode, if: ->(obj){ obj.address.present? and obj.address_changed? }

  def set_default_admin
    self.admin ||= false
  end

  def admin?
    # Assuming you have an `admin` boolean column in the users table
    self.admin
  end

  private

  def set_default_driver
    self.driver = false if self.driver.nil?
  end

  def set_default_approved
    self.approved = false if self.approved.nil?
  end

  # <%= form.select :market, options_for_select(ProjectPort::MARKETS, project_port.market), { include_blank: 'Select market' }, { class: 'select-with-placeholder' } %>
  COMPETENCIES = [
    'coss', 'supervisor', '360 operator', 'ground worker', 'telehandler driver', 'Engeneer', 'steel fixer', 'carpenter', 'electrician'
  ]
end
