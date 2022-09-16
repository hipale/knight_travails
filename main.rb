class Knight
  def initialize()
    @piece = "&"
  end

  def knight_moves(cord_start, cord_end, moves = [])
    moves.push("[#{cord_start[0]}][#{cord_start[1]}]")
    x = cord_start[0]
    puts x
    y = cord_start[1]
   if cord_start == cord_end
    puts "ass"
    return moves
   end
   #if x < 6
   #knight_moves(x + 2, y - 1)
   #end
   knight_moves(x + 2, y + 1)
  end
end

class Board
  def initialize(array_x = [], array_y = [])
    @array_y = array_y
    
    0.upto(7) do |num|
      array_x.push(num + 1)
    end
    
    0.upto(7) do |num|
      @array_y.push(array_x)
    end
    return @array_y
  end

end

 b = Board.new
 pp b

 k = Knight.new
puts k.knight_moves([0, 0], [1, 2])
