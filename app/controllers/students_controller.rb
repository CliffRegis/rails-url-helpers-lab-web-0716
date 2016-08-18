class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
  end
  
  #  def active_state
  #   if self.active == true
  #     "This student is currently active."
  #  else
  #   "This student is currently inactive."
  #   end
  
  # end
  
  # def activate_student
  #    @student = Student.find(params[:id])
  #     if @student.active == true 
  #       @student.active = false
  #       @student.save
  #     else
  #       @student.active = true
  #       @student.save
  #     end
  #     redirect_to student_path
  #   end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end