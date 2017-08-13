class Concert < ApplicationRecord
  has_many :attendance_records, class_name: "Attendance"
  has_many :attendees, through: :attendance_records
  
  validates :band, presence: true
  validates :venue, presence: true
  validates :date, presence: true
  validates :start_time, presence: true
  
end
