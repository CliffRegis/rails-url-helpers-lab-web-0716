class ActivateStudentController < ApplicationController

def show
	@student =Student.find(params[:id])
      if @student.active == true 
        @student.active = false
        @student.save
      else
        @student.active = true
        @student.save
      end
      redirect_to student_path
  end

end