class StudentsController < ApplicationController

  def index
    byebug
    students = Student.all
    # student = Student.find_by(last_name: params[:name].capitalize)
    render json: students
  end

  def show
    student = Student.find(params[:id])
    render json: student
  end

end
