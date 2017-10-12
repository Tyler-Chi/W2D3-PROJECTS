
class Array
  def my_uniq
    output = []
    self.each do |el|
      output << el unless output.include?(el)
    end
    output
  end

  def two_sum
    output = []
    (0...self.length-1).each do |i|
      (i+1 ... self.length).each do |j|
        output << [i,j] if self[i] + self[j] == 0
      end
    end
    output
  end

  def my_transpose
    # output = Array.new(self[0].length) { [] }
    result = []
    # (0...self.length).each do |counter|
    #   self.each do |row|
    #     output[counter] << row[counter]
    #   end
    # end
    (0...self[0].length).each do |i|
       arr = []
      (0...self.length).each do |j|
        arr << self[j][i]
      end
      result << arr
    end

    result
  end

  def stock_picker
    stock = []
    difference = 0
    (0...self.length-1).each do |i|
      (i+1 ... self.length).each do |j|
        current_difference = self[j]-self[i]
        if current_difference > difference
          stock = [i,j]
          difference = current_difference
        end
      end
    end
    return stock
  end
end
