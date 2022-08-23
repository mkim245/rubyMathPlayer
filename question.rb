class Questions
  attr_accessor :number1, :number2
  def initialize(number1, number2)
    @number1 = number1
    @number2 = number2
  end

  def state
    "What does #{number1} plus #{number2} equal?"
  end

  def calculation
    "#{number1} plus #{number2} equals #{number1 + number2}"
  end

  def decision (number3)
    if ("#{number1 + number2}").to_i == (number3).to_i
      return "Yes! You are correct"   
    else
      return "Seriously? No!"
    end
  end

 def gameOver
    "Good bye!"
 end

end

