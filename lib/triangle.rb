class Triangle

  attr_accessor :l1, :l2, :l3
  
  def initialize(l1, l2, l3)
    @l1 = l1
    @l2 = l2
    @l3 = l3

  end

  def kind
    if @l1 + @l2 <= @l3 || @l2 + @l3 <= @l1 || @l1 + @l3 <= @l2 || @l1 <= 0 || @l2 <= 0 || @l3 <= 0
      begin
        raise TriangleError
      end
    end

    case [@l1,@l2,@l3].uniq.length
    when  1
      :equilateral
    when 2
      :isosceles
    when 3
      :scalene
    end
  end
  



  class TriangleError < StandardError
    def message
      "The sum of two triangle lengths must exceed the value! Please enter valid lengths."
    end
  end
end
