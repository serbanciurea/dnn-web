class Course < ApplicationRecord

  validates_presence_of :name, :description, :price, :location, :category

end
