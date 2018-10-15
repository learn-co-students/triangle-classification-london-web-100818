require'pry'
class Triangle
  attr_accessor :first, :second, :third
def initialize(first,second,third)
@first=first
@second=second
@third=third
@array=[@first,@second,@third]
end
def kind

  if (@array.any? {|x| x<=0} || @array.any? {|x| @array.inject(:+)-x<=x} )

    raise TriangleError

elsif @array.uniq.length==1
  :equilateral
elsif @array.uniq.length==2
  :isosceles
elsif @array.uniq.length==3
  :scalene
end
end


  class TriangleError < StandardError

  end
end
