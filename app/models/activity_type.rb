class ActivityType < ApplicationRecord
  has_many :activity_records, dependent: :destroy
end
