
class Array
  def my_uniq
    output = []
    self.each do |el|
      output << el unless output.include?(el)
    end
  end
end
