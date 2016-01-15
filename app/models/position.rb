class Position < ActiveRecord::Base

  has_many :roles
  has_many :people, through: :roles

  validates :title, presence: true

end
