class Question
    def initialize
      @num1 = rand(1..20)
      @num2 = rand(1..20)
    end
  
    def to_s
      "What does #{@num1} plus #{@num2} equal?"
    end
  
    def correct_answer?(response)
      response == (@num1 + @num2)
    end
  end