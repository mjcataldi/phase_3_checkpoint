class Concert < ApplicationRecord
  has_many :attendance_records, class_name: Attendance
  has_many :attendees, through: :attendance_records
end
