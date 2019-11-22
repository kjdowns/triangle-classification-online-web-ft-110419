
class Triangle
  
  attr_accessor :side1, :side2, :side3, :type
  
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end
  
  def kind 
    case
      when self.side1 == self.side2 && self.side2 == self.side3
        #equilateral triangles have equal sides
        self.set_type(:equilateral)
      when
    
    scalene triangles have no equal sides
    isosceles triangles have two sides equal
    
    self.type
    
  end
  
  def set_type(type)
    @type = type
  end
  
end
