class Role < ActiveRecord::Base

  belongs_to :person
  belongs_to :group
  belongs_to :position

  validates :person_id, presence: true
  validates :group_id, presence: true
  validates :position_id, presence: true

end
