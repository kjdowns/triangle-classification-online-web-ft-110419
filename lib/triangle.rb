
class Triangle
  
  attr_accessor :side1, :side2, :side3, :type
  
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end
  
  def kind 
    
    
    scalene triangles have no equal sides
    isosceles triangles have two sides equal
    equilateral triangles have equal sides
    
    
  end
  
  def determine_type
    
  end
  
  def set_type(type)
    @type = type
  end
  
end
