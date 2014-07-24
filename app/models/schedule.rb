class Schedule < ActiveRecord::Base
  belongs_to :user
  default_scope -> { order ('created_at DESC') }
  validates :user_id, presence: true
  validates :class_date, presence: true
  validates :class_time, presence: true
  validates :class_duration, presence: true
  validates :student, presence: true
  validates :class_type, presence: true
end
