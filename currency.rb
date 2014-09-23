class Calculator

	def calculate_to_euro
		0.77818
	end

end





describe Calculator do 
	before @super_calculator = Calculator.new
	
	describe :calculate_to_euro do
		it "should return the value in dollars" do
			@super_calculator.calculate_to_euro(1).should==0.77818
		end

		


	end
end




