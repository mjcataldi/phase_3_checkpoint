class User < ApplicationRecord
  has_secure_password
  has_many :tickets, class_name: "Attendance", foreign_key: :attendee_id
  
  validates :first_name, :last_name, :email, :password, presence:true
  validates :email, uniqueness: true

  def full_name
    "#{self.first_name} #{self.last_name}"
  end
  
end