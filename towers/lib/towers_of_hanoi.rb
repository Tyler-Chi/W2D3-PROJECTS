class Towers_Of_Hanoi
  attr_reader :stacks
  def initialize
    @stacks = [[3,2,1],[],[]]
  end

  def move(start_pos,end_pos)
    piece = @stacks[start_pos].pop
    @stacks[end_pos].push(piece)
  end

  def valid_move?(start_pos,end_pos)
    #check if start position is empty
    return false if self[start_pos].empty? || start_pos == end_pos
    return true if self[end_pos].empty?
    return false if self[start_pos].last > self[end_pos].last
    true
  end

  def play

    until won?
      guess_pos = get_input
      if valid_move?(guess_pos)
        move(guess_pos)
    end

  end


end
