class Triangle

  attr_accessor :side1, :side2, :side3 

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    if valid_triangle?
      if side1 != side2 && side2 != side3 && side3 != side1
        :scalene
      elsif side1 == side2 && side1 == side3 && side2 == side3
        :equilateral 
      elsif side1 == side2 || side1 == side3 || side2 == side3
        :isosceles
      end
    else
      raise TriangleError
    end
  end

  def valid_triangle?
    if check_sides

      if side1 + side2 > side3 && side1 + side3 > side2 && side2 + side3 > side1
        puts "yes"
        true
      else 
        false
      end
    else
      false
    end
  end

  def check_sides
    if side1 > 0 && side2 > 0 && side3 > 0
      true
    else
      false
    end 
  end

  class TriangleError < StandardError
    def error 
      "Not a vaild triangle"
    end
  end

end
