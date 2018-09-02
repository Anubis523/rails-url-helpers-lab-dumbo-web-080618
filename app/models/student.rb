class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  def activity
   status = "This student is currently "
    if !self.active
      status += "inactive."
    else
      status += "active."
    end
    status
  end

end