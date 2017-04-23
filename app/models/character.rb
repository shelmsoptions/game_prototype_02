class Character < ApplicationRecord
  belongs_to :user
  belongs_to :class_type

  validates :name, :hit_points, :class_type_id, presence: true
  validates :name, length: { minimum: 2, maximum: 20 }

end