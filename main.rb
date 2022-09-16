class Knight
  def initialize()
    @piece = "&"
  end

  def knight_moves(cord_start, cord_end, moves = [])
    x = cord_start[0]
    
    y = cord_start[1]
    if y > 7 || y < 0 || x > 7 || x < 7
      return
    end
    moves.push("[#{cord_start[0]}][#{cord_start[1]}]")
    
    puts "#{x} / #{y}"
   if cord_start == cord_end
    puts "ass"
    return moves
   end
   if x < 6
     knight_moves([x + 2, y - 1], cord_end)
     knight_moves([x + 2, y + 1], cord_end)
   elsif x > 1
    knight_moves([x - 2, y - 1], cord_end)
    knight_moves([x - 2, y + 1], cord_end)
   elsif y < 6
    knight_moves([x - 1, y + 2], cord_end)
    knight_moves([x + 1, y + 2], cord_end)
   elsif y > 1
    knight_moves([x - 1, y - 2], cord_end)
    knight_moves([x + 1, y - 2], cord_end)
  end
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
puts k.knight_moves([0, 0], [3, 3])
