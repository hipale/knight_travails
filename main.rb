class Knight
  attr_accessor :position
  def initialize(position = [4, 4])
    @piece = "&"
    @position = position
  end

  def knight_moves(cord1, cord2)

  end
end

class Board
  def initialize(cord0 = [1, 1])
    x_axis = [1, 2, 3, 4, 5, 6, 7, 8]
    y_axis = [1, 2, 3, 4, 5, 6, 7, 8]
    for x in x_axis
      elm_pos = false
      if x = cord0[0] + 1
        elm_pos = true
      end
      puts
      for y in y_axis
        if y == cord0[1] + 1 && elm_pos == true 
          print "Z" 
          elm_pos = false
        else
          print "x" 
        end     
      end
    end
  end
end

b = Board.new
