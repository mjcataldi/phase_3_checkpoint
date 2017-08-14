class Concert < ApplicationRecord
  has_many :attendance_records, class_name: "Attendance"
  has_many :attendees, through: :attendance_records
  
  validates :band, :venue, :date, :start_time, presence: true
  
  
  def attendees_list(current_user)
    attendees = ""
    
    if self.attendees.count > 0
      self.attendees.each do |attendee|
        if attendee == current_user
          attendees += "<strong>#{attendee.first_name} #{attendee.last_name}</strong>, "
        else
          attendees += "#{attendee.first_name} #{attendee.last_name}, "
        end
      end
      # attendees = self.attendees.map(&:full_name).join(", ")
    else
      attendees = "(none)  "
    end
    "Attendees: #{attendees[0..-3]}"
    
  end
  
end
