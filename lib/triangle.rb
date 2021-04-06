class Triangle
  attr_accessor :a, :b, :c
  def initialize(a,b,c)
    @a=a
    @b=b
    @c=c
  end
  
  def kind
    if a<=0 || b<=0 || c<=0 || a+b<=c || a+c<=b || b+c<=a
      raise TriangleError
    elsif a==b&&b==c&&a==c
      :equilateral
    elsif a==b||b==c||a==c
      :isosceles
    elsif a!=b&&b!=c&&a!=c
      :scalene
    end
  end
  
  class TriangleError < StandardError
    def message
      "Sides a + b must be greater than side c, and none of your sides can equal 0."
    end
  end
      
end
