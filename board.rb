require_relative "piece.rb"
require_relative "display.rb"
class Board

attr_accessor :board

  def initialize
    @board = Array.new(8){Array.new(8)}
    place_pieces
  end

  def [](pos)
    row, col = pos
    @board[row][col]
  end

  def []=(pos, piece)
    row, col = pos
    @board[row][col] = piece
    @board
  end

  def move_piece(start_pos, end_pos)
    if self[end_pos] == NullPiece.instance #&& end_pos.all {|el| el < 8}
      self[end_pos] = self[start_pos]
      self[start_pos] = NullPiece.instance
      @board
    else
      raise "There's already a piece there!"
    end
  end

  def place_pieces
    #put pieces on board
    8.times do |row|
      8.times do |col|

        @board[row][col] = (Piece.new) if row < 2 || row > 5
        @board[row][col] = (NullPiece.instance) if row >= 2 && row <= 5

      end
    end
  end

  # def render
  #   system("clear")
  #   @board.each_index do |row|
  #     # puts "#{(0..7).to_a.join(" ")} "
  #     row.each_index do |col|
  #       pos = [row, col]
  #       puts "#{@board[pos]}"
  #       puts "#{col} #{row.join(" ")}"
  #     end
  #   end
  # end
end

if __FILE__==$PROGRAM_NAME
  game = Board.new
  game[[1,1]] = "bishop"
  game.board
end
