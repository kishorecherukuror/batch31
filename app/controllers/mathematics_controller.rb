class MathematicsController < ApplicationController
  def fibonacci
  	  @arr=[0,1]
  	  a=0
  	  b=1
  	  @n=params[:number]
  	   (3..@n.to_i).each do |i|
  	   	 temp=a
  	   	 a=b
  	   	 b=temp+a
  	   	 @arr << b  
  	   	end
    end
end
