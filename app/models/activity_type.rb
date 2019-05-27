class ActivityType < ApplicationRecord
  has_many :activity_records, dependent: :destroy

  def name_and_quantity
    "#{self.name} (#{self.unit})"
  end
end
