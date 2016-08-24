class EmployeeController < ApplicationController
  def new
  end

  def show


    @e_name = params[:emp_name]
    @e_age = params[:emp_age]
    @e_dob = params[:emp_dob]
    @e_gender = params[:emp_gender]
    @e_marital_status = params[:emp_marital_status]
    @e_address = params[:emp_address]
    @e_city = params[:emp_city]
    @e_state = params[:emp_state]
    @e_country = params[:emp_country]
    @e_zip = params[:emp_zip]
    @e_tel = params[:emp_tel]
    @e_email = params[:emp_email]
    @e_photo = params[:emp_pic]        

		#@data = params {}

		#params.each do |key, value|

		#	@key = params.keys
		#	@value = params.values

		#end

    @u = Newemployee.new(:name => @e_name, :age => @e_age, :dob => @e_dob, :gender => @e_gender, :maritals => @e_marital_status, :address => @e_address, :city => @e_city, :state => @e_states, :country => @e_country, :zip => @e_zip, :contact => @e_tel, :email => @e_email, :photo => @e_photo)
    @u.save

    redirect_to employee_index_path        
	end

    def index
        @emp = Newemployee.all
    end

end

