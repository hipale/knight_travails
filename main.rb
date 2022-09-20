class Knight
  attr_accessor :position, :parent, :child
  def initialize(position, parent = nil)
    @position = position
    @child = []
    @parent = parent
  end
end

class Board
  attr_accessor :start_pos, :end_pos, :node
  def initialize(); end
  
  def knight_moves(start_pos, end_pos)
    @start_pos = start_pos
    @end_pos = end_pos
    new_arr = create_graph(start_pos)
    create_board(new_arr)
  end

  def create_graph(position, parent = nil, count = 0)
   node = Knight.new(position, parent)

    if node.position == @end_pos
      @moves_arr = [node.position]
      parents = node.parent
      until parents.position == @start_pos
        @moves_arr.unshift(parents.position)
        parents = parents.parent
      end
      @moves_arr.unshift(@start_pos)
    elsif count == 6 
      return
    else
    x = position[0]; y = position[1]
    create_graph([x + 2, y - 1], node, count + 1) if x < 6 && y > 0
    create_graph([x - 2, y - 1], node, count + 1) if x > 1 && y > 0
    create_graph([x + 2, y + 1], node, count + 1) if x < 6 && y < 7
    create_graph([x - 2, y + 1], node, count + 1) if x > 1 && y < 7
    create_graph([x - 1, y + 2], node, count + 1) if x > 0 && y < 6
    create_graph([x - 1, y - 2], node, count + 1) if x > 0 && y > 1
    create_graph([x + 1, y + 2], node, count + 1) if x < 7 && y < 6
    create_graph([x + 1, y - 2], node, count + 1) if x < 7 && y > 1
    return @moves_arr
    end
  end

  def create_board(array)
    y = 0; x = 0
    until y == 8
      puts
      until x == 8
        if array.any? { |elm| elm[0] == y && elm[1] == x}
          print "&"
        else 
          print "X"
        end
        x += 1
      end
      y += 1
      x = 0
    end

  end
end



b = Board.new
puts b.knight_moves([0, 0], [7, 7])
