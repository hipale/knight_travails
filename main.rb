class Knight
  def initialize()
    @piece = "&"
  end

  def knight_moves(cord_start, cord_end, moves = [])
    x = cord_start[0]
    y = cord_start[1]
    if y > 7 || y < 0 || x > 7 || x < 0
      return 'no'
    end
    puts "#{x} / #{y}"
  
    until cord_start == cord_end
      moves.push("[#{cord_start[0]}][#{cord_start[1]}]")
      if x - cord_end[0] < y -cord_end[1]
        x > cord_end[0] ? x = x - 2 : x = x + 2
        y > cord_end[1] ? y = y - 1 : y = y + 1
      else
        y > cord_end[1] ? y = y - 2 : y = y + 2
        x > cord_end[0] ? x = x - 1 : x = x + 1
      end
      cord_start = [x, y]
    end
    moves.push("[#{cord_start[0]}][#{cord_start[1]}]")
    return moves
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
