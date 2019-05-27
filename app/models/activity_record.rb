class ActivityRecord < ApplicationRecord
  belongs_to :activity_type
  belongs_to :user
  validates :description, :quantity, :activity_type_id, presence: true
end
