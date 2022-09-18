class Knight
  attr_accessor :data, :moves
  def initialize()
    @piece = "&"
  end

  def find()
  end

  def knight_moves(start_pos, end_pos, count = 0, moves_arr = [])

    moves_arr.push(start_pos)
   
    @data = start_pos
    x = @data[0]
    y = @data[1]
    if x > 7 || x < 0 || y > 7 || y < 0 || count == 7
      return "no"
    else
     @moves = []
     @moves.push([x + 2, y - 1]) if x < 6 && y > 0
     @moves.push([x - 2, y - 1]) if x > 1 && y > 0
     @moves.push([x + 2, y + 1]) if x < 6 && y < 7
     @moves.push([x - 2, y + 1]) if x > 1 && y < 7
     @moves.push([x - 1, y + 2]) if x > 0 && y < 6
     @moves.push([x - 1, y - 2]) if x > 0 && y > 1
     @moves.push([x + 1, y + 2]) if x < 7 && y < 6
     @moves.push([x + 1, y - 2]) if x < 7 && y > 1
     @moves.each  do |elm| 
      
      if moves_arr.any? { |para| para == end_pos }
        return moves_arr
      end
      knight_moves(elm, end_pos, count + 1, moves_arr) 
    end
    end
  end
end

k = Knight.new
print k.knight_moves([0, 0], [4, 4])