class Attendance < ApplicationRecord
  belongs_to :concert
  belongs_to :attendee, class_name: "User"
  
end
