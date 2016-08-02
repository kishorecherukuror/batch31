class StudentsController < ApplicationController
  def create
    @name = params[:name]
    @age = params[:age]
    @address = params[:address]
    @gender = params[:gender]
  end

  def edit
  end

  def show
  end

  def index
  end

  def delete
  end
end
