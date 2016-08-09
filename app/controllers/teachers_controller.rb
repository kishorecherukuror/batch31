class TeachersController < ApplicationController
  def new
  	@teacher = Teacher.new
  end

  def create
  	@teacher = Teacher.new(teacher_params)
  	if @teacher.save
  		redirect_to teachers_index_path
  	end
  end

  def index
  	@teachers = Teacher.all
  end


private

def teacher_params
	params.require(:teacher).permit(:fname,:lname,:ful_name,:department)
end

end
