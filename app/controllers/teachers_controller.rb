class TeachersController < ApplicationController

  
  def new
  	@teacher = Teacher.new
  end

  def create
  	@teacher = Teacher.new(teacher_params)
  	if @teacher.save
  		redirect_to teachers_index_path
    else
      render 'new'
  	end
  end

  def show
    @teacher = Teacher.find params[:id]
  end

  def edit
    @teacher = Teacher.find params[:id]
  end

  def update
    @teacher = Teacher.find params[:id]
    if @teacher.update(teacher_params)
      redirect_to teachers_index_path
    end
  end

  def destroy
    @teacher = Teacher.find params[:id]
    if @teacher.delete
      redirect_to teachers_index_path
    end
  end


  def index
    puts "*************"
    puts params
    @teachers = Teacher.where(nil)
    @teachers = @teachers.find_name(params[:fname]) if params[:fname].present?
    @teachers = @teachers.find_age(params[:age]) if params[:age].present?
    @teachers = @teachers.find_dept(params[:dept]) if params[:dept].present?
    respond_to do |format|
        format.js
        format.html
    end
  end


private

def teacher_params
	params.require(:teacher).permit(:fname,:lname,:ful_name,:department,:age,:email)
end

end
