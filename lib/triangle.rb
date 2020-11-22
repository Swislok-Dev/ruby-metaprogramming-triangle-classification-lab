
class Triangle
  attr_accessor :s1, :s2, :s3
  
  def initialize(s1, s2, s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3
  end

  def kind
    valid_triangle?
    if @s1 == @s2 && @s2== @s3
      :equilateral
    elsif (@s1 == @s2 && @s1 != @s3) || (@s2 == @s3 && @s2 != @s1) || (@s3 == @s1 && @s3 != @s2)
      :isosceles
    else
      :scalene
    end
  end

  def valid_triangle?
    if @s1 + @s2 + @s3 > 2
      return
    elsif positive?(@s3) || positive?(@s1) || positive?(@s2)
      return
    else
      raise TriangleError
    end
  end



  class TriangleError < StandardError
  end

end