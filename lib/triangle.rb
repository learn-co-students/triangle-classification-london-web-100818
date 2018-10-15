require 'pry'

class Triangle


  attr_accessor :side1, :side2, :side3, :kind

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    if @side1 <= 0 or @side2 <= 0 or @side3 <= 0
        raise TriangleError
    else
      if (@side1 + @side2 <= @side3) or (@side2 + @side3 <= @side1) or (@side3 + @side1 <= @side2)
        raise TriangleError
      else
        if @side1 == @side2 && @side2 == @side3
          @kind = :equilateral
        elsif @side1 == @side2 or @side2 == @side3 or @side1 == @side3
          @kind = :isosceles
        else
          @kind = :scalene
        end
      end
    end
    @kind
  end
  class TriangleError < StandardError
  end
end
