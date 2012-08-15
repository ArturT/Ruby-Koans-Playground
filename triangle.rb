# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  # WRITE THIS CODE
  hash = Hash.new
  hash[a] = a
  hash[b] = b
  hash[c] = c

  hash.each do |k,v|
    if v < 0
      raise TriangleError.new "Sides can't be negative"
    end
  end

  if a > b + c or b > a + c or c > a + b
    raise TriangleError.new "Sum of two sides must be greater than third side"
  end

  if a + b == c or a + c == b or b + c == a
    raise TriangleError.new "Two sides can't be equal one side"
  end

  if hash.size == 1
    if a == 0
      raise TriangleError.new "Sides can't be equal zero"
    end
    :equilateral
  elsif hash.size == 2
   :isosceles
  else
   :scalene
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
