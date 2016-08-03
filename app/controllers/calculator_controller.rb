class CalculatorController < ApplicationController
  def addition
  	@var1 = params[:txtbox1]
    @var2 = params[:txtbox2]
	
	if(@var1 != nil && @var2 != nil) 
    	@var3 = @var1.to_i + @var2.to_i
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
		else 
    		@var3 = @var1.to_i / @var2.to_i
    	end
    end  	
  end
end
