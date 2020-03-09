class StudentsController < ApplicationController
  before_action :set_student, only: :show # creating an before action for show using a private method
  
  def index
    @students = Student.all # create instance variable to present all students
  end

  def show
    # set_student
  end

  def activate
    @student = set_student # Student.find.id
    @student.active = !@student.active # student.id is active = not student.id is active
    @student.save #  save student.id
    redirect_to student_path(@student) # direct them to 'students/:id'
  end

  private

    def set_student
      @student = Student.find(params[:id]) # Student.find.id
    end
end