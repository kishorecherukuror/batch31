class MathematicsController < ApplicationController
  def prime
  	@number = params[:number].to_i
	  	if @number == 2
			@result = "2 is Prime Number"
		else
			p = true
			for i in 2..@number/2
				if @number % i == 0
					p = false
				end
			end
			if p
				@result = "#{@number} is Prime Number"
			else
				@result = "#{@number} is not Prime Number"
			end
		end
  end

  def evenodd
  	@number = params[:number]
  	if @number.to_i%2==0
  		@result = "#{@number} is Even Number"
	else
		@result = "#{@number} is Odd Number"
	end  	
  end
 
  def palindrome
  	@value = params[:value]
  	if @value.to_s == @value.to_s.reverse
  		@result = "#{@value} is Palindrome"
  	else
  		@result = "#{@value} is not Palindrome"
  	end
  end

end
