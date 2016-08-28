class MarksController < ApplicationController
  def create
  @m1=params[:marks1].to_i
  @m2=params[:marks2].to_i
  @m3=params[:marks3].to_i
  @m4=params[:marks4].to_i
  
unless @m1 ==0 && @m2 ==0 && @m3==0 && @m4 ==0
  @total = @m1+@m2+@m3+@m4
  @percentage = @total.to_f/4
  if @m1>35 && @m2>35 && @m3>35 && @m4>35
	  if @percentage.to_i >= 60
	  	@class = "First Class"
	  elsif @percentage.to_i >= 50 && @percentage.to_i < 60
	  	@class = "Second Class"
	  elsif @percentage.to_i >= 35 && @percentage.to_i <50
	  	@class = "Third Class"
	  else
	  	@class = "Fail"
	  end
	else
		@class = "Fail"
	end
end

end

end
