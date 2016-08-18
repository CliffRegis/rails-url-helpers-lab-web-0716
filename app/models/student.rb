class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

   def active_state
    if self.active == true
     "This student is currently active."
   else
      "This student is currently inactive."
      
    end
  end

  # def activate_student
  #   # @student = Student.find(params[:id])
  #     if self.active == true 
  #       self.active = false
  #       self.save
  #     else
  #       self.active = true
  #       self.save
  #     end
  #     redirect_to student_path
  #   end
end