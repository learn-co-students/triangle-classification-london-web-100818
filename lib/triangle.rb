class Triangle

  attr_accessor :a, :b, :c, :type
 
  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind

    if @a + @b <= @c || @b + @c <= @a || @a + @c <= @b || @a <= 0 || @b <= 0 || @c <= 0
      begin
        raise TriangleError
      end
    end
    
    case [@a, @b, @c].uniq.length
    when  1
      self.type = :equilateral
    when 2
      self.type = :isosceles
    when 3
      self.type = :scalene
    end
  end

  class TriangleError < StandardError

  end


end
