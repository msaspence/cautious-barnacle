class Person < ActiveRecord::Base

  has_many :roles
  has_many :positions, through: :roles

  validates :full_name, presence: true

end
