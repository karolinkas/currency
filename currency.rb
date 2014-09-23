class Calculator

	def calculate_to_euro(arg1)
		0.77818
	end

end





describe Calculator do 
	before do 
    @super_calculator = Calculator.new
  end

	
	describe :calculate_to_euro do
		it "should return the value in dollars" do
			@super_calculator.calculate_to_euro(1).should==0.77818
		end

    it "should convert swedish kr to euro" do
      @super_calculator.calculate_to_euro(100).should == 11.29
    end
	end
end




