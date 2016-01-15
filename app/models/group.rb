class Group < ActiveRecord::Base

  belongs_to :parent, class_name: 'Group'
  has_many   :children

  validates :parent_id, presence: true

end
