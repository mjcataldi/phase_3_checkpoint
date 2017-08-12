class User < ApplicationRecord
  has_secure_password
  has_many :tickets, class_name: Attendance, foreign_key: :attendee_id
end