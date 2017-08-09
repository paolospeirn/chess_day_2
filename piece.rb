
require 'singleton'
class Piece 

  attr_accessor :rep

  def initialize
    @pos = 0
    @rep = "P"
  end

  # def value=(value)
  #   @value = value
  # end

end

class NullPiece < Piece
  include Singleton

  def initialize
    @rep = "0"
  end

end
