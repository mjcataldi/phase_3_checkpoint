class User < ApplicationRecord
  has_secure_password
  has_many :tickets, class_name: "Attendance", foreign_key: :attendee_id
  
  validates :first_name, presence:true
  validates :last_name, presence:true
  validates :email, presence:true
  validates :password, presence:true
  
end