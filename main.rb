class Knight
  def initialize()
    @piece = "&"
  end

  def knight_moves(cord_start, cord_end, moves = [])
    x = cord_start[0]
    y = cord_start[1]
    if y > 7 || y < 0 || x > 7 || x < 0
      return 
    end
  
    until cord_start == cord_end
      moves.push([x, y])
      if x - cord_end[0] < y -cord_end[1]
        x > cord_end[0] ? x = x - 2 : x = x + 2
        y > cord_end[1] ? y = y - 1 : y = y + 1
      else
        y > cord_end[1] ? y = y - 2 : y = y + 2
        x > cord_end[0] ? x = x - 1 : x = x + 1
      end
      cord_start = [x, y]
    end
    moves.push([x, y])
    moves.each { |elm| pp borard = Board.new(elm)}
    return moves
  end
end

class Board
  def initialize(elm = nil, array_x = [], array_y = [])
    @array_y = array_y
    
    0.upto(7) do
      array_x.push("[-]")
    end
    
    0.upto(7) do
      @array_y.push(array_x)
    end
    if elm != nil
     @array_y.each_with_index do |para, inx|
      if inx = elm[0]
        para[elm[1]] = "$"
      end
    end
    end
    return @array_y
  end

end

 b = Board.new
 pp b

 k = Knight.new
print k.knight_moves([1, 1], [5, 6])
