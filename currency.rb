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
	
	def calculate_to_euro(amount,from,to=0.77818)
		
		result=amount*TO_EURO[from]

	end




end





describe Calculator do 
	before do 
    @super_calculator = Calculator.new
  end

	describe :calculate_to_euro do
		it "should return the value in dollars" do
			@super_calculator.calculate_to_euro(1,:usd,:eur).should==0.77818
		end

    it "should convert swedish kr to euro" do
      @super_calculator.calculate_to_euro(100,:sek,:eur).should == 10
    end

		it "should return the value in dollars for the amount of 100" do
			@super_calculator.calculate_to_euro(100,:usd,:eur).should==77.818
		end

		it "should return the value in dollars for the amount of 100" do
			@super_calculator.calculate_from_euro(100,:eur,:usd).should==128.356
		end


	end
end





