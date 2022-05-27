class StudentsController < ApplicationController

  def index
    students = Student.all

    if params.has_key?(:name)
      student = Student.where(last_name: params[:name].capitalize)
      render json: student
    elsif params.has_key?(:name)
      student = Student.where(first_name: params[:name].capitalize)
      render json: student
    else
      render json: students
    end
  end

  def show
    student = Student.find(params[:id])
    render json: student
  end

end
