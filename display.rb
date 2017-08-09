require_relative 'board.rb'
require_relative 'cursor'
require 'colorize'

# attr_accessor :grid
class Display

  attr_accessor :grid

  def initialize
    @grid = Board.new
    @cursor = Cursor.new([0,0], @grid)
    render
  end

  def render
    puts "  #{(0..7).to_a.join(" ")}"
    @grid.board.each_with_index do |row, i|
      puts "#{i} #{row.map {|el| el.rep}}"
    end
      # 8.times do |row|
      #   8.times do |col|
      #     pos = [row, col]
      #     puts "#{@board[pos].rep}"
      #   end
      # end
  end

end
