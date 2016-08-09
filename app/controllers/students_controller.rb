class StudentsController < ApplicationController
  def create

  end

  def edit

  end

  def show
    @name = params[:name]
    @age = params[:age]
    @address = params[:address]
    @gender = params[:gender]
    @dob = params[:dob]
    @habits = params[:rock]
    @email = params[:email]
    @file = params[:file]
  end

  def index
  end

  def delete
  end
end
