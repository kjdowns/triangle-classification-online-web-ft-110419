require 'pry'
class Triangle
  
  attr_accessor :side1, :side2, :side3, :type
  
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end
  
  def kind 
    case
      when self.equilateral? && self.valid?
        set_type(:equilateral) 
      when self.isosceles? && self.valid?
        set_type(:isosceles)
      when self.scalene? && self.valid?
        set_type(:scalene)
      else
        begin
          raise TriangleError
        rescue TriangleError => error 
          puts error.message
          binding.pry
        end
      end
    self.type
  end
  
  def equilateral?
    #equilateral triangles have equal sides
    self.side1 == self.side2 && self.side2 == self.side3
  end
  
  def isosceles?
    #isosceles triangles have two sides equal
    ((self.side1 == self.side2) && (self.side2 != self.side3)) ||
    ((self.side2 == self.side3) && (self.side3 != self.side1)) ||
    ((self.side3 == self.side1) && (self.side1 != self.side2))
  end
  
  def scalene?
    #scalene triangles have no equal sides
    (self.side1 != self.side2) && (self.side2 != self.side3) && (self.side3 != self.side1) 
  end
  
  def valid?
    if (self.side1 + self.side2 + self.side3) == 0
      return false
    end
    ((self.side1 + self.side2) > self.side3) &&
    ((self.side2 + self.side3) > self.side1) &&
    ((self.side3 + self.side1) > self.side2)
  end
  
  def set_type(type)
    @type = type
  end
  
  class TriangleError < StandardError
    
    def message
      "Invalid parameters!! Lengths violate triangle inequality"
    end
    
  end
  
end
