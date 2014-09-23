class Calculator

	TO_EURO = {
    usd: 0.77818,
    gbp: 1.27341,
    cad: 0.70518,
    aud: 0.69052,
    sek: 0.10000
  }

  FROM_EURO = {
    usd: 1.28356,
    gbp: 0.78478,
    cad: 1.41613,
    aud: 1.44651,
    sek: 9.65400
  }
	
	def convert(amount,from, to)
		return amount * TO_EURO[from] if to == :eur
    return amount * FROM_EURO[to] if from == :eur
	end
  
end


describe Calculator do 
	before do 
    @super_calculator = Calculator.new
    @currency = :eur
  end

	describe :convert do
		it "should return the value in canadian dollars" do
			@super_calculator.convert(10, :cad, @currency).should == 10 * 0.70518
		end

    it "should return the value in euro if canadian dollars" do
      @super_calculator.convert(10, @currency, :cad).should == 10 * 1.41613
    end

  #   it "should convert swedish kr to euro" do
  #     @super_calculator.convert(100, :sek).should == 10
  #   end

		# it "should return the value in dollars for the amount of 100" do
		# 	@super_calculator.convert(100, :usd).should==77.818
		# end

		# it "should return the value in dollars for the amount of 100" do
		# 	@super_calculator.convert(100, :usd).should==128.356
		# end
  
  #   it "should return the value in SEK for the amount of 100" do
  #     @super_calculator.convert(100, :sek).should == 965.400
  #   end
	end
end





