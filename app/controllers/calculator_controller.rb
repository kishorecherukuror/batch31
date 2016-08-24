class CalculatorController < ApplicationController
  def addition
  	@var1 = params[:txtbox1]
    @var2 = params[:txtbox2]
	
  	if(@var1 != nil && @var2 != nil) 
      	@var3 = @var1.to_i + @var2.to_i
    end


    @arr = [0, 1]
    a = 0
    b = 1
    @n = params[:txtbox1]

    (3..@n.to_i).each do |i|
      temp = a
      a = b
      b = temp + a
      @arr << b
    end
    
  end

  def subtraction
  	@var1 = params[:txtbox1]
    @var2 = params[:txtbox2]

	if(@var1 != nil && @var2 != nil) 
    	@var3 = @var1.to_i - @var2.to_i
    end 	
  end

  def multiplication
  	@var1 = params[:txtbox1]
    @var2 = params[:txtbox2]

	if(@var1 != nil && @var2 != nil) 
    	@var3 = @var1.to_i * @var2.to_i
    end  	
  end

  def division
  	@var1 = params[:txtbox1]
    @var2 = params[:txtbox2]

	if(@var1 != nil && @var2 != nil)
		if (@var2 == "0")
			@var3 = "Infinity"
		elsif (@var1.to_i % @var2.to_i == 0)
        @var3 = @var1.to_i / @var2.to_i
        #@var3 = "In elsif"
    else
    		@var3 = @var1.to_f / @var2.to_f
        #@var3 = "In else"
    	end
    end  	
  end
end
